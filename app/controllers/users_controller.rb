class UsersController < ApplicationController
  #before_filter :authenticate, :only => [:index, :show, :micropost, :edit, :update, :destroy, :following, :follower]
  before_filter :authenticate, :except => [:new, :create]
  before_filter :correct_user, :only => [:edit, :update]
  before_filter :admin_user, :only => :destroy
  before_filter :set_layout, :except => [:new, :create]
	
  def index
	@title = "All users"
	#@users = User.all
	@users = User.paginate(:page => params[:page], :per_page => 20)
  end
  
  def new
	redirect_to root_path if signed_in?
	
	@title = "Sign up"
	@user = User.new
  end

	def show
		@user = User.find(params[:id])
		@title = @user.name
		if @user.id == current_user.id
			@microposts = []
		else
			@microposts = @user.feed.paginate(:page => params[:page], :per_page => 5)
		end
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
		#puts "current user id:#{current_user.id}, params id:#{params[:id]}"
		if current_user.id.to_s != params[:id].to_s
			#puts "deleting user <#{params[:id]}> by current user: <#{current_user.id}>"
			User.find(params[:id]).destroy
			flash[:success] = "User destroyed."
		else
			flash[:success] = "You cannot delete yourself."
		end
		
		redirect_to users_path
	end	
	
	def micropost
		#@user = current_user
		@microposts = current_user.feed.paginate(:page => params[:page], :per_page => 5)
		@title = current_user.name
		@micropost = Micropost.new
	end
	
	def following
		@title = "Following"
		@user = User.find(params[:id])
		@users = @user.following.paginate(:page => params[:page])
		render 'show_follow'
	end
	
	def followers
		@title = "Followers"
		@user = User.find(params[:id])
		@users = @user.followers.paginate(:page => params[:page])
		render 'show_follow'
	end
	
	private
	
	def set_layout
		@curr_menu = "layouts/user_menu"
		@curr_layout = "layouts/user_layout"
	end
	
	def correct_user
		@user = User.find(params[:id])
		redirect_to(root_path) unless current_user?(@user)
	end
	
end
