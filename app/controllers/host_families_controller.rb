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
  
  def homestayphoto
  end

  def servicerequestform  
  end
  
  def responsibility
	@title = "Host Family's Responsibilities"
	@translation = Translation.find_by_nm('hostfamily.responsibility')
  end
  
  def guideline
	@title = "Host Family Guideline"
	@translation = Translation.find_by_nm('hostfamily.guideline')
  end
  
  def question
	@title = "Host Family Questions"
	@translation = Translation.find_by_nm('hostfamily.question')
  end
  
  def submitquestion
	name = params[:name]
	phone = params[:phone]
	email = params[:email]
	question = params[:question]
	
	EmailNotifier.host_family_question(name, phone, email, question).deliver
	
	flash[:notice] = 'Your question has been successfully submitted. We will contact you very soon. Thank you.'
	redirect_to host_families_question_path
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
