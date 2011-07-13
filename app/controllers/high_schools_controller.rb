class HighSchoolsController < ApplicationController
  before_filter :set_layout
  
  def allhighschool
	@title = "All High School"
	@high_school_lists = HighSchoolList.all.paginate(:page => params[:page], :per_page => 10)
	@titlelabel = 'label.highschool.allhighschool'
  end
  
  def privateday
	@title = "Private Day School"
	@titlelabel = 'label.service.privatehs'
	@high_school_lists = HighSchoolList.find_all_by_hs_type("Private Day School")
	
	render :action => "allhighschool"
  end

  def privateboarding
	@title = "Private Boarding School"
	
	@titlelabel = 'label.service.boardinghs'
	@high_school_lists = HighSchoolList.find_all_by_hs_type("Private Boarding School")
	
	render :action => "allhighschool"
  end

  def public
	@title = "Public School"
  end

  def rank	
	@title = "US High School Ranking"
	
	@highschool_rankings = HighschoolRanking.all.paginate(:page => params[:page], :per_page => 10)
  end
  
  def applicationprocedure
	@title = "High School Application Procedure"
	
	@translation = Translation.find_by_nm('highschool.applicationprocedure')
  end
  
  def otherservice
	@title = "Other Services"
	
	@translation = Translation.find_by_nm('highschool.otherservice')
  end
  
  def highschooldetail
	@title = "High School Details"
	hs_id = params[:id]
	if hs_id.nil?
		if I18n.locale != session[:prev_locale]
			hs_id = session[:prec_highschool_id]
		else
			redirect_to high_schools_allhighschool_path
		end
	end
	
	@high_school_list = HighSchoolList.find_by_id(hs_id)

	session[:prev_locale] = I18n.locale
	session[:prec_highschool_id] = hs_id
  end

  private
	def set_layout
		@curr_menu = "layouts/highschool_menu"
		@curr_layout = "layouts/user_layout"
	end
end
