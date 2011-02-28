class CollegesController < ApplicationController
  before_filter :set_layout
  
  def bachelor
	@curr_menu = "layouts/college_menu"
	@title = "US Bechelor School"
  end

  def msphd
	@curr_menu = "layouts/college_menu"
	@title = "US Master & PhD School"
  end

  def undergraduaterank
	@curr_menu = "layouts/college_menu"
	@title = "US Undergraduate Ranking"
  end
  
  def graduateschoolrank
	@curr_menu = "layouts/college_menu"
	@title = "US Graduate School Ranking"
  end

  private
	def set_layout
		@curr_layout = "layouts/user_layout"
	end
end
