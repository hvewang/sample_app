class ServiceRequestsController < ApplicationController
  before_filter :authenticate, :admin_user, :except=>[:new, :create]
  
  # GET /service_requests
  # GET /service_requests.xml
  def index
    @service_requests = ServiceRequest.all
	@curr_menu = "layouts/user_menu"
	@curr_layout = "layouts/user_layout"
	
    #@service_requests = ServiceRequest.find_by_sql("select id, student_name, year_of_birth, gender, 
	#parent_name, relationship, street, city, country, nationality, cell_phone, email, service_grade, service_type, service_city, 
	#service_state, service_detail, way_to_know_nh, comments, status, updated_by, home_phone from service_requests")

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @service_requests }
    end
  end

  # GET /service_requests/1
  # GET /service_requests/1.xml
  def show
    @service_request = ServiceRequest.find(params[:id])
	#@service_request = ServiceRequest.find_by_sql("select id, student_name, year_of_birth, gender, 
	#parent_name, relationship, street, city, country, nationality, cell_phone, email, service_grade, service_type, service_city, 
	#service_state, service_detail, way_to_know_nh, comments, status, updated_by, home_phone from service_requests where id=1")
	@curr_menu = "layouts/user_menu"
	@curr_layout = "layouts/user_layout"
	
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @service_request }
    end
  end

  # GET /service_requests/new
  # GET /service_requests/new.xml
  def new
    @service_request = ServiceRequest.new
	@servicegrades = ServiceGrade.all
	@curr_menu = "layouts/hostfamily_menu"
	@curr_layout = "layouts/user_layout"
		
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @service_request }
    end
  end

  # GET /service_requests/1/edit
  def edit
    @curr_menu = "layouts/user_menu"
	@curr_layout = "layouts/user_layout"
    @service_request = ServiceRequest.find(params[:id])
	@servicegrades = ServiceGrade.all
  end

  # POST /service_requests
  # POST /service_requests.xml
  def create
    @service_request = ServiceRequest.new(params[:service_request])

    respond_to do |format|
      if @service_request.save
		EmailNotifier.service_request(@service_request).deliver
	    if admin_user?
			format.html { redirect_to(@service_request, :notice => 'Service request was successfully created.') }
			format.xml  { render :xml => @service_request, :status => :created, :location => @service_request }
		else
			format.html { redirect_to(new_service_request_url, :notice => 'Service request was successfully created.') }
			format.xml  { render :xml => @service_request, :status => :created, :location => @service_request }
		end
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @service_request.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /service_requests/1
  # PUT /service_requests/1.xml
  def update
    @service_request = ServiceRequest.find(params[:id])

    respond_to do |format|
      if @service_request.update_attributes(params[:service_request])
        format.html { redirect_to(@service_request, :notice => 'Service request was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @service_request.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /service_requests/1
  # DELETE /service_requests/1.xml
  def destroy
    @service_request = ServiceRequest.find(params[:id])
    @service_request.destroy

    respond_to do |format|
      format.html { redirect_to(service_requests_url) }
      format.xml  { head :ok }
    end
  end
  
end
