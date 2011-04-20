class HostFamiliesController < ApplicationController
  before_filter :set_layout
  
  def qualification
	@title = "Why New Hope"
	@translation = Translation.find_by_nm('hostfamily.qualification')
  end

  def applicationform
  end

  def whynewhope
	@title = "Why New Hope"
	@translation = Translation.find_by_nm('hostfamily.whynewhope')
  end

  def whatishomestay
	@title = "What ia a Homestay"
	@translation = Translation.find_by_nm('hostfamily.whatishostfamily')
  end

  def faq
	@title = "Frequently Asked Questions"
	@translation = Translation.find_by_nm('hostfamily.faq')
  end

  def homestayphoto
  end

  def servicerequestform
  end

  def availablehomestay
	@host_family_infos = HostFamilyInfo.find_all_by_status('Active').paginate(:page => params[:page], :per_page => 10)
  end

  private
	
	def set_layout
		@curr_menu = "layouts/hostfamily_menu"
		@curr_layout = "layouts/user_layout"
	end
end
