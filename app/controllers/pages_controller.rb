class PagesController < ApplicationController
	before_filter :set_layout, :except => [:home]
	
  def home
	@title = "Home"
  end

  def contact
	@curr_menu = "layouts/contact_menu"
	@title = "Contact"
  end
  
  def about
	@curr_menu = "layouts/about_menu"
	@title = "About"
  end

  def help
	@curr_menu = "layouts/help_menu"
	@title = "Help"
  end
  
  private
	
	def set_layout
		@curr_layout = "layouts/user_layout"
	end
	
end
