class HighSchoolsController < ApplicationController
  before_filter :set_layout
  
  def privateday
	@title = "Private Day School"
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

  private
	def set_layout
		@curr_menu = "layouts/highschool_menu"
		@curr_layout = "layouts/user_layout"
	end
end
