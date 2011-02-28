class HostFamiliesController < ApplicationController
  before_filter :set_layout
  
  def qualification
  end

  def applicationform
  end

  def whynewhope
  end

  def whatishomestay
	@title = "What ia a Homestay"
  end

  def faq
  end

  def homestayphoto
  end

  def servicerequestform
  end

  def availablehomestay
  end

  private
	
	def set_layout
		@curr_menu = "layouts/hostfamily_menu"
		@curr_layout = "layouts/user_layout"
	end
end
