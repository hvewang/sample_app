class SessionsController < ApplicationController
  def new
	@title = "Sign in"
	@salt = params[:astr]
	
	if signed_in?
		redirect_to current_user
	end
	
	@curr_menu = "layouts/signin_menu"
	@curr_layout = "layouts/user_layout"
  end
  
  def create
	user = User.authenticate(params[:session][:email], params[:session][:password])
	salt = params[:session][:astr]
	
	if user.nil?
		# Create an error message and re-render the signin form.
		flash.now[:error] = "Invalid email/password combination."
		@title = "Sign in"
		render 'new'
	else
		# Sign the user in and redirect to the user's show page.
		if user.status == 'A'
			sign_in user
			redirect_back_or user
		elsif user.salt == salt
			user.password = params[:session][:password]
			user.status = 'A'
			user.save
			
			puts "after saving "
			puts user.status
			puts user.errors
			puts "after status"
			
			sign_in user
			redirect_back_or user
		else
			flash.now[:error] = "Please check your email and activate your account first"
			@title = "Sign in"
			render 'new'
		end
	end
  end
  
  def destroy
	sign_out
	redirect_to root_path
  end

end
