class CollegeListsController < ApplicationController
  before_filter :admin_user 
  before_filter :set_layout 
  
  # GET /college_lists
  # GET /college_lists.xml
  def index
    @college_lists = CollegeList.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @college_lists }
    end
  end

  # GET /college_lists/1
  # GET /college_lists/1.xml
  def show
    @college_list = CollegeList.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @college_list }
    end
  end

  # GET /college_lists/new
  # GET /college_lists/new.xml
  def new
    @college_list = CollegeList.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @college_list }
    end
  end

  # GET /college_lists/1/edit
  def edit
    @college_list = CollegeList.find(params[:id])
  end

  # POST /college_lists
  # POST /college_lists.xml
  def create
    @college_list = CollegeList.new(params[:college_list])

    respond_to do |format|
      if @college_list.save
        format.html { redirect_to(@college_list, :notice => 'College list was successfully created.') }
        format.xml  { render :xml => @college_list, :status => :created, :location => @college_list }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @college_list.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /college_lists/1
  # PUT /college_lists/1.xml
  def update
    @college_list = CollegeList.find(params[:id])

    respond_to do |format|
      if @college_list.update_attributes(params[:college_list])
        format.html { redirect_to(@college_list, :notice => 'College list was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @college_list.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /college_lists/1
  # DELETE /college_lists/1.xml
  def destroy
    @college_list = CollegeList.find(params[:id])
    @college_list.destroy

    respond_to do |format|
      format.html { redirect_to(college_lists_url) }
      format.xml  { head :ok }
    end
  end
  
  private
	def set_layout
		@curr_menu = "layouts/user_menu"
		@curr_layout = "layouts/user_layout"
	end
end
