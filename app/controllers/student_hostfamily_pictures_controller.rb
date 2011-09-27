class StudentHostfamilyPicturesController < ApplicationController
  before_filter :admin_user
  before_filter :set_layout
  
  # GET /student_hostfamily_pictures
  # GET /student_hostfamily_pictures.xml
  def index
    @student_hostfamily_pictures = StudentHostfamilyPicture.all.paginate(:page => params[:page], :per_page => 10)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @student_hostfamily_pictures }
    end
  end

  # GET /student_hostfamily_pictures/1
  # GET /student_hostfamily_pictures/1.xml
  def show
    @student_hostfamily_picture = StudentHostfamilyPicture.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @student_hostfamily_picture }
    end
  end

  # GET /student_hostfamily_pictures/new
  # GET /student_hostfamily_pictures/new.xml
  def new
    @student_hostfamily_picture = StudentHostfamilyPicture.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @student_hostfamily_picture }
    end
  end

  # GET /student_hostfamily_pictures/1/edit
  def edit
    @student_hostfamily_picture = StudentHostfamilyPicture.find(params[:id])
  end

  # POST /student_hostfamily_pictures
  # POST /student_hostfamily_pictures.xml
  def create
    @student_hostfamily_picture = StudentHostfamilyPicture.new(params[:student_hostfamily_picture])

    respond_to do |format|
      if @student_hostfamily_picture.save
        format.html { redirect_to(@student_hostfamily_picture, :notice => 'Student hostfamily picture was successfully created.') }
        format.xml  { render :xml => @student_hostfamily_picture, :status => :created, :location => @student_hostfamily_picture }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @student_hostfamily_picture.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /student_hostfamily_pictures/1
  # PUT /student_hostfamily_pictures/1.xml
  def update
    @student_hostfamily_picture = StudentHostfamilyPicture.find(params[:id])

    respond_to do |format|
      if @student_hostfamily_picture.update_attributes(params[:student_hostfamily_picture])
        format.html { redirect_to(@student_hostfamily_picture, :notice => 'Student hostfamily picture was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @student_hostfamily_picture.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /student_hostfamily_pictures/1
  # DELETE /student_hostfamily_pictures/1.xml
  def destroy
    @student_hostfamily_picture = StudentHostfamilyPicture.find(params[:id])
    @student_hostfamily_picture.destroy

    respond_to do |format|
      format.html { redirect_to(student_hostfamily_pictures_url) }
      format.xml  { head :ok }
    end
  end
  
  private
	def set_layout
		@curr_menu = "layouts/user_menu"
		@curr_layout = "layouts/user_layout"
	end
end
