class PagesController < ApplicationController
	before_filter :set_layout, :except => [:home]
	
  def home
	@title = "Home"
  end

  def contact
	@curr_menu = "layouts/contact_menu"
	@title = "Contact New Hope"
  end
  
  def about
	@curr_menu = "layouts/about_menu"
	@title = "About New Hope"
  end

  def help
	@curr_menu = "layouts/help_menu"
	@title = "Help"
  end
  
  def service
	@curr_menu = "layouts/service_menu"
	@title = "Services"
  end
  
  def school
	@curr_menu = "layouts/school_menu"
	@title = "Schools"
  end
  
  def ourteam
	@curr_menu = "layouts/ourteam_menu"
	@title = "Our Team"
  end
  
  def whynewhope
	@curr_menu = "layouts/about_menu"
	@title = "Why New Hope"
  end
  
  def news
	@title = "News"
  end
  
  def successcase
	@title = "Success cases"
  end
  
  def studentmsg
	@title = "Student messages"
  end
  
  private
	
	def set_layout
		@curr_layout = "layouts/user_layout"
	end
	
end
