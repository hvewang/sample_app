class HighSchoolListsController < ApplicationController
  before_filter :admin_user 
  before_filter :set_layout 
  
  # GET /high_school_lists
  # GET /high_school_lists.xml
  def index
    @high_school_lists = HighSchoolList.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @high_school_lists }
    end
  end

  # GET /high_school_lists/1
  # GET /high_school_lists/1.xml
  def show
    @high_school_list = HighSchoolList.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @high_school_list }
    end
  end

  # GET /high_school_lists/new
  # GET /high_school_lists/new.xml
  def new
    @high_school_list = HighSchoolList.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @high_school_list }
    end
  end

  # GET /high_school_lists/1/edit
  def edit
    @high_school_list = HighSchoolList.find(params[:id])
  end

  # POST /high_school_lists
  # POST /high_school_lists.xml
  def create
    @high_school_list = HighSchoolList.new(params[:high_school_list])

    respond_to do |format|
      if @high_school_list.save
        format.html { redirect_to(@high_school_list, :notice => 'High school list was successfully created.') }
        format.xml  { render :xml => @high_school_list, :status => :created, :location => @high_school_list }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @high_school_list.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /high_school_lists/1
  # PUT /high_school_lists/1.xml
  def update
    @high_school_list = HighSchoolList.find(params[:id])

    respond_to do |format|
      if @high_school_list.update_attributes(params[:high_school_list])
        format.html { redirect_to(@high_school_list, :notice => 'High school list was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @high_school_list.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /high_school_lists/1
  # DELETE /high_school_lists/1.xml
  def destroy
    @high_school_list = HighSchoolList.find(params[:id])
    @high_school_list.destroy

    respond_to do |format|
      format.html { redirect_to(high_school_lists_url) }
      format.xml  { head :ok }
    end
  end
  
  private
	def set_layout
		@curr_menu = "layouts/user_menu"
		@curr_layout = "layouts/user_layout"
	end
end
