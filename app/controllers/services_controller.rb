class ServicesController < ApplicationController
  before_filter :set_layout
  
  def general
	@title = "Services provided by New Hope"
	@titlelabel = 'label.service.newhope'
	findservice 'services.general'
  end

  def dayschool
	@title = "Day School Service"
	@titlelabel = 'label.service.privatehs'
	findservice 'services.dayschool'
  end

  def boardingschool
	@title = "Boarding School Service"
	@titlelabel = 'label.service.boardinghs'
	findservice 'services.boardingschool'
  end

  def publicschool
	@title = "Public School Service"
	@titlelabel = 'label.service.publichs'
	findservice 'services.publicschool'
  end

  def undergraduate
	@title = "Undergraduate Service"
	@titlelabel = 'label.service.undergraduate'
	findservice 'services.undergraduate'
  end

  def graduate
	@title = "Graduate Service"
	@titlelabel = 'label.service.msphd'
	findservice 'services.graduate'
  end

  def hostfamily
	@title = "Host Family Service"
	@titlelabel = 'label.service.requesthostfamily'
	findservice 'services.hostfamily'
  end

  def hostfamilyapplication
	@title = "Host Family Application Service"
	@titlelabel = 'label.service.applyforhostfamily'
	findservice 'services.hostfamilyapplication'
  end

  def docwriting
	@title = "Documentation Preparation Service"
	@titlelabel = 'label.service.wenshu'
	findservice 'services.docwriting'
  end

  def followup
	@title = "Follow-up Service"
	@titlelabel = 'label.service.afterservice'
	findservice 'services.followup'
  end
  
  def news
	@title = "FAQs"
	
	#if (news_type.nil? || news_type.empty?)
	#	@news_updates = NewsUpdate.all.paginate(:page => params[:page], :per_page => 10)
	#else
	#	@news_updates = NewsUpdate.find_all_by_news_type(news_type).paginate(:page => params[:page], :per_page => 10)
	#end
	@news_updates = NewsUpdate.find_by_sql("select * from news_updates where news_type in ('HFFAQ', 'HSFAQ', 'CollegeFAQ') order by updated_at desc").paginate(:page => params[:page], :per_page => 10)
  end
  
  def newsdetails
	@title = "FAQ Details"
	
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
    def findservice(servicetype)
		@translation = Translation.find_by_nm(servicetype)
		render :action => 'general'
	end
	
	def set_layout
		@curr_layout = "layouts/user_layout"
		@curr_menu = "layouts/service_menu"
	end
end
