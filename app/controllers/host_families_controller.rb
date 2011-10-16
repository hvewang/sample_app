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
    @picperrow = 4
	@student_hostfamily_pictures = StudentHostfamilyPicture.all.paginate(:page => params[:page], :per_page => @picperrow * 2)
  end
  
  def showhomestayphoto
    id = params[:id]
	
	if id.empty?
		redirect_to host_families_homestayphoto_path
	end
	
	@student_hostfamily_picture = StudentHostfamilyPicture.find(id)
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
	#redirect_to host_families_question_path
	redirect_to contact_path
  end

  def availablehomestay
	@host_family_infos = HostFamilyInfo.find_all_by_status('Active').paginate(:page => params[:page], :per_page => 10)
  end
  
  def showhostfamilyphoto
	@title = "Host Family Photos"
	host_family_info_id = params[:id]
	if host_family_info_id.nil?
		if I18n.locale != session[:prev_locale]
			host_family_info_id = session[:prec_host_family_info_id]
		else
			redirect_to host_families_availablehomestay_path
		end
	end
	
	@host_family_info = HostFamilyInfo.find(host_family_info_id)
	#@host_family_photos = @host_family_info.host_family_photos
	
	session[:prev_locale] = I18n.locale
	session[:prec_host_family_info_id] = host_family_info_id
  end
  
  def news
	@title = "Homestay FAQs"
	
    news_type = params[:news_type]
	if (news_type.nil? || news_type.empty?) 
		news_type = "HFFAQ"
	end
	
	set_label(news_type)
	if (news_type.nil? || news_type.empty?)
		@news_updates = NewsUpdate.all.paginate(:page => params[:page], :per_page => 10)
	else
		@news_updates = NewsUpdate.find_all_by_news_type(news_type).paginate(:page => params[:page], :per_page => 10)
	end
  end
  
  def newsdetails
	@title = "Host Family FAQ Details"
	set_label(params[:news_type])
	
	news_id = params[:id]
	if news_id.nil?
		if I18n.locale != session[:prev_locale]
			news_id = session[:prec_news_id]
		else
			redirect_to high_school_news_path
		end
	end
	
	@news_update = NewsUpdate.find(news_id)

	session[:prev_locale] = I18n.locale
	session[:prec_news_id] = news_id
  end
  
  private
	
	def set_layout
		@curr_menu = "layouts/hostfamily_menu"
		@curr_layout = "layouts/user_layout"
	end
	
	def set_label(news_type)
		if news_type == "HighschoolNews"
			@titlelabel = "label.highschool.label.latestnews"
		elsif news_type == "HighschoolGraduate"
			@titlelabel = "label.highschool.label.hsgraduate"
		else
			@titlelabel = "header.label.latestnews"
		end
	end
end
