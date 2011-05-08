class SuccessCasesController < ApplicationController
  before_filter :admin_user, :only => [:index, :show, :new, :edit, :create, :update, :destroy]
  before_filter :set_layout, :only => [:index, :show, :new, :edit, :create, :update, :destroy] 
  before_filter :set_layout2, :except => [:index, :show, :new, :edit, :create, :update, :destroy] 
  
  # GET /success_cases
  # GET /success_cases.xml
  def index
    @success_cases = SuccessCase.all.paginate(:page => params[:page], :per_page => 10)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @success_cases }
    end
  end

  # GET /success_cases/1
  # GET /success_cases/1.xml
  def show
    @success_case = SuccessCase.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @success_case }
    end
  end

  # GET /success_cases/new
  # GET /success_cases/new.xml
  def new
    @success_case = SuccessCase.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @success_case }
    end
  end

  # GET /success_cases/1/edit
  def edit
    @success_case = SuccessCase.find(params[:id])
  end

  # POST /success_cases
  # POST /success_cases.xml
  def create
    @success_case = SuccessCase.new(params[:success_case])

    respond_to do |format|
      if @success_case.save
        format.html { redirect_to(@success_case, :notice => 'Success case was successfully created.') }
        format.xml  { render :xml => @success_case, :status => :created, :location => @success_case }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @success_case.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /success_cases/1
  # PUT /success_cases/1.xml
  def update
    @success_case = SuccessCase.find(params[:id])

    respond_to do |format|
      if @success_case.update_attributes(params[:success_case])
        format.html { redirect_to(@success_case, :notice => 'Success case was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @success_case.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /success_cases/1
  # DELETE /success_cases/1.xml
  def destroy
    @success_case = SuccessCase.find(params[:id])
    @success_case.destroy

    respond_to do |format|
      format.html { redirect_to(success_cases_url) }
      format.xml  { head :ok }
    end
  end
  
  def allstudent
    @success_cases = SuccessCase.find_all_by_status_and_record_type('Active', 'Success Case').paginate(:page => params[:page], :per_page => 3)
	@titlelabel = 'label.successcase.all'
	@titlelabel0 = 'label.successcase.successcase'
	
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @success_cases }
    end
  end
  
  def undergraduate
    @titlelabel = 'label.successcase.undergraduate'
	findsuccesscase 'Undergraduate'
  end
  
  def graduate
	@titlelabel = 'label.successcase.graduate'
	findsuccesscase 'Graduate'
  end
  
  def highschool
	@titlelabel = 'label.successcase.highschool'
	findsuccesscase 'High School'
  end
  
  def other
	@titlelabel = 'label.successcase.other'
	findsuccesscase 'Other'
  end
  
   private
    def findsuccesscase(casetype)
		@titlelabel0 = 'label.successcase.successcase'
		@success_cases = SuccessCase.find_all_by_status_and_record_type_and_school_type('Active', 'Success Case', casetype).paginate(:page => params[:page], :per_page => 3)

		respond_to do |format|
		  format.html { render :action => 'allstudent' }# index.html.erb
		  format.xml  { render :xml => @success_cases }
		end
	end
  
    def set_layout2
		@curr_layout = "layouts/user_layout"
		@curr_menu = "layouts/successcase_menu"
	end
	
	def set_layout
		@curr_menu = "layouts/user_menu"
		@curr_layout = "layouts/user_layout"
	end
end
