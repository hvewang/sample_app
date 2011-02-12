class MicropostsController < ApplicationController
  before_filter :authenticate, :only => [:create, :destroy]
  before_filter :authorized_user, :only => :destroy
	
  def index
  end
  
  def create
	@micropost = current_user.microposts.build(params[:micropost])
	if @micropost.save
		flash[:success] = "Micropost created!"
		redirect_to mypost_path
	else
		@microposts = current_user.microposts.paginate(:page => params[:page], :per_page => 5)
		render "users/micropost"
	end
  end
  
  def destroy
	@micropost.destroy
	#redirect_back_or "users/micropost"
	redirect_to mypost_path
  end
  
  private
	def authorized_user
		@micropost = Micropost.find(params[:id])
		redirect_to root_path unless current_user?(@micropost.user)
	end
end
