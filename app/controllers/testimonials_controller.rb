class TestimonialsController < ApplicationController
  before_filter :set_layout
  
  def parent
	@title = "Parent Testimonials"
	@titlelabel = 'label.testimonial.parent'
	findtestimonial('Testimonials-Parent')
  end

  def student
	@title = "Student Testimonials"
	@titlelabel = 'label.testimonial.student'
	findtestimonial('Testimonials-Parent')
  end

  def hostfamily
	@title = "Host Family Testimonials"
	@titlelabel = 'label.testimonial.host'
	findtestimonial('Testimonials-Parent')
  end
  
  private
	def findtestimonial(recordtype)
		@titlelabel0 = 'header.label.testimonial'
		@success_cases = SuccessCase.find_all_by_status_and_record_type('Active', recordtype).paginate(:page => params[:page], :per_page => 3)

		respond_to do |format|
		  format.html { render 'success_cases/allstudent' }# index.html.erb
		  format.xml  { render :xml => @success_cases }
		end
	end
	 
	def set_layout
		@curr_layout = "layouts/user_layout"
		#@curr_menu = "layouts/testimonial_menu"
		@curr_menu = "layouts/successcase_menu"
	end
end
