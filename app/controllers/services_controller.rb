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
