class HighSchoolsController < ApplicationController
  before_filter :set_layout
  
  def allhighschool
	@title = "All High School"
	@high_school_lists = HighSchoolList.all
  end
  
  def privateday
	@title = "Private Day School"
	@high_school_lists = HighSchoolList.all
  end

  def privateboarding
	@title = "Private Boarding School"
  end

  def public
	@title = "Public School"
  end

  def rank	
	@title = "US High School Ranking"
  end
  
  def applicationprocedure
	@title = "High School Application Procedure"
  end
  
  def otherservice
	@title = "Other Services"
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
