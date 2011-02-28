class TestimonialsController < ApplicationController
  before_filter :set_layout
  
  def parent
	@curr_menu = "layouts/testimonial_menu"
	@title = "Parent Testimonials"
  end

  def student
	@curr_menu = "layouts/testimonial_menu"
	@title = "Student Testimonials"
  end

  def hostfamily
	@curr_menu = "layouts/testimonial_menu"
	@title = "Host Family Testimonials"
  end
  
  private
	def set_layout
		@curr_layout = "layouts/user_layout"
	end
end
