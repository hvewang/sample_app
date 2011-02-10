class UsersController < ApplicationController
  before_filter :authenticate, :only => [:index, :edit, :update, :destroy]
  before_filter :correct_user, :only => [:edit, :update]
  before_filter :admin_user, :only => :destroy
  
  def index
	@title = "All users"
	#@users = User.all
	@users = User.paginate(:page => params[:page])
  end
  
  def new
	redirect_to root_path if signed_in?
	
	@title = "Sign up"
	@user = User.new
  end

	def show
		@user = User.find(params[:id])
		@title = @user.name
	end
	
	def create
		redirect_to root_path if signed_in?
		
		@user = User.new(params[:user])
		if @user.save
			# Handle a successful save.
			sign_in @user
			flash[:success] = "welcome to New Hope International Education"
			redirect_to @user
		else
			@title = "Sign up"
			render 'new'
		end
	end
	
	def edit
		#@user = User.find(params[:id])
		@title = "Edit user"
	end
	
	def update
		#@user = User.find(params[:id])
		if @user.update_attributes(params[:user])
			flash[:success] = "Profile updated."
			redirect_to @user
		else
			@title = "Edit user"
			render 'edit'
		end
	end
	
	def destroy
		if current_user.id == params[:id]
			User.find(params[:id]).destroy
			flash[:success] = "User destroyed."
		else
			flash[:success] = "You cannot delete yourself."
		end
		
		
		redirect_to users_path
	end	
	
	private
	def authenticate
		deny_access unless signed_in?
	end
	
	def correct_user
		@user = User.find(params[:id])
		redirect_to(root_path) unless current_user?(@user)
	end
	
	def admin_user
		redirect_to(root_path) unless admin_user?
	end
end
