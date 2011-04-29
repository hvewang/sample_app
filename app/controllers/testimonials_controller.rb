class TestimonialsController < ApplicationController
  before_filter :set_layout, :except => [:parent1, :student1, :hostfamily1, :other1]
  before_filter :set_layout1, :except => [:parent, :student, :hostfamily, :other]
  
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
  
  def other
	@title = "Other Testimonials"
	@titlelabel = 'label.successcase.other'
	findtestimonial('Testimonials-Other')
  end
  
  def parent1
	@title = "Parent Testimonials"
	@titlelabel = 'label.testimonial.parent'
	findtestimonial('Testimonials-Parent')
  end

  def student1
	@title = "Student Testimonials"
	@titlelabel = 'label.testimonial.student'
	findtestimonial('Testimonials-Parent')
  end

  def hostfamily1
	@title = "Host Family Testimonials"
	@titlelabel = 'label.testimonial.host'
	findtestimonial('Testimonials-Parent')
  end
  
  def other1
	@title = "Other Testimonials"
	@titlelabel = 'label.successcase.other'
	findtestimonial('Testimonials-Other')
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
		@curr_menu = "layouts/testimonial_menu"
		#@curr_menu = "layouts/successcase_menu"
	end
	
	def set_layout1
		@curr_layout = "layouts/user_layout"
		#@curr_menu = "layouts/testimonial_menu"
		@curr_menu = "layouts/hostfamily_menu"
	end
end
