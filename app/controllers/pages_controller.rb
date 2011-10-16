class PagesController < ApplicationController
	before_filter :set_layout, :except => [:home, :news]
	
  def home
	@title = "New Hope's Home"
	@curr_layout = "layouts/home_layout"
	
	@news_updates = NewsUpdate.find(:all, :order => "updated_at desc").paginate(:page => params[:page], :per_page => 8)
	@college_lists = CollegeList.find(:all, :order => "updated_at desc").paginate(:page => params[:page], :per_page => 8)
	@high_school_lists = HighSchoolList.find(:all, :order => "updated_at desc").paginate(:page => params[:page], :per_page => 8)
	
	@host_family_infos = HostFamilyInfo.find(:all, :order => "updated_at desc").paginate(:page => params[:page], :per_page => 8)
	@testimonials = SuccessCase.find(:all, :order => "updated_at desc", :conditions => ["status = 'Active' and record_type in ('Testimonials-Student', 'Testimonials-Parent', 'Testimonials-HostFamily', 'Testimonials-Other')"]).paginate(:page => params[:page], :per_page => 8)
	
	#@host_family_infos = HostFamilyInfo.find_all_by_status('Active').paginate(:page => params[:page], :per_page => 8)
	@host_family_infos = HostFamilyInfo.find(:all, :order => "updated_at desc", :conditions => ["status = 'Active'"]).paginate(:page => params[:page], :per_page => 8)
  end

  def contact
    #http://upcomer.wordpress.com/2011/04/15/google-maps-in-rails-3/
	#use gmaps4rails to add google maps
	
	@curr_menu = "layouts/contact_menu"
	@title = "Contact New Hope"
	
	@locations = Location.all
	@locations.each do |location|
		location.force_utf
	end
	
	@json = @locations.to_gmaps4rails
  end
  
  def question
    #http://upcomer.wordpress.com/2011/04/15/google-maps-in-rails-3/
	#use gmaps4rails to add google maps
	
	@curr_menu = "layouts/contact_menu"
	@title = "Email New Hope Your Question"
  end
  
  def about
	@curr_menu = "layouts/about_menu"
	@title = "About New Hope"
	@translation = Translation.find_by_nm('pages.about.newhope')
  end

  def help
	@curr_menu = "layouts/help_menu"
	@title = "Help"
  end
  
  def service
	@curr_menu = "layouts/service_menu"
	@title = "Services"
  end
  
  def ourteam
	@curr_menu = "layouts/ourteam_menu"
	@title = "Our Team"
  end
  
  def whynewhope
	@curr_menu = "layouts/about_menu"
	@title = "Why New Hope"
	@translation = Translation.find_by_nm('pages.about.whynewhope')
  end
  
  def news
	@title = "Latest News"
	@curr_menu = "layouts/news_menu"
	@curr_layout = "layouts/user_layout"
  end
  
  def successcase
	@curr_menu = "layouts/successcase_menu"
	@title = "Success cases"
	@curr_menu = "layouts/about_menu"
  end
  
  private
	
	def set_layout
		@curr_layout = "layouts/user_layout"
	end
	
end
