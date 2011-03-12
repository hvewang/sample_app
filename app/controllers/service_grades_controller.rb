class ServiceGradesController < ApplicationController
  before_filter :admin_user
  before_filter :set_layout
  
  # GET /service_grades
  # GET /service_grades.xml
  def index
    @service_grades = ServiceGrade.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @service_grades }
    end
  end

  # GET /service_grades/1
  # GET /service_grades/1.xml
  def show
    @service_grade = ServiceGrade.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @service_grade }
    end
  end

  # GET /service_grades/new
  # GET /service_grades/new.xml
  def new
    @service_grade = ServiceGrade.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @service_grade }
    end
  end

  # GET /service_grades/1/edit
  def edit
    @service_grade = ServiceGrade.find(params[:id])
  end

  # POST /service_grades
  # POST /service_grades.xml
  def create
    @service_grade = ServiceGrade.new(params[:service_grade])

    respond_to do |format|
      if @service_grade.save
        format.html { redirect_to(@service_grade, :notice => 'Service grade was successfully created.') }
        format.xml  { render :xml => @service_grade, :status => :created, :location => @service_grade }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @service_grade.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /service_grades/1
  # PUT /service_grades/1.xml
  def update
    @service_grade = ServiceGrade.find(params[:id])

    respond_to do |format|
      if @service_grade.update_attributes(params[:service_grade])
        format.html { redirect_to(@service_grade, :notice => 'Service grade was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @service_grade.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /service_grades/1
  # DELETE /service_grades/1.xml
  def destroy
    @service_grade = ServiceGrade.find(params[:id])
    @service_grade.destroy

    respond_to do |format|
      format.html { redirect_to(service_grades_url) }
      format.xml  { head :ok }
    end
  end
  
  private
	
	def set_layout
		@curr_menu = "layouts/user_menu"
		@curr_layout = "layouts/user_layout"
	end
end
