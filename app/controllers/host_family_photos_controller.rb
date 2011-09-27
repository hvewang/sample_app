class HostFamilyPhotosController < ApplicationController
  before_filter :admin_user 
  before_filter :set_layout 
  
  # GET /host_family_photos
  # GET /host_family_photos.xml
  def index
    @host_family_photos = HostFamilyPhoto.all.paginate(:page => params[:page], :per_page => 10)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @host_family_photos }
    end
  end

  # GET /host_family_photos/1
  # GET /host_family_photos/1.xml
  def show
    @host_family_photo = HostFamilyPhoto.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @host_family_photo }
    end
  end

  # GET /host_family_photos/new
  # GET /host_family_photos/new.xml
  def new
    @host_family_photo = HostFamilyPhoto.new
	@host_family_infos = HostFamilyInfo.order("l_nm, f_nm").find_all_by_status("Active")
	
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @host_family_photo }
    end
  end

  # GET /host_family_photos/1/edit
  def edit
    @host_family_photo = HostFamilyPhoto.find(params[:id])
	@host_family_infos = HostFamilyInfo.order("l_nm, f_nm").find_all_by_status("Active")
  end

  # POST /host_family_photos
  # POST /host_family_photos.xml
  def create
    @host_family_photo = HostFamilyPhoto.new(params[:host_family_photo])

    respond_to do |format|
      if @host_family_photo.save
        format.html { redirect_to(@host_family_photo, :notice => 'Host family photo was successfully created.') }
        format.xml  { render :xml => @host_family_photo, :status => :created, :location => @host_family_photo }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @host_family_photo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /host_family_photos/1
  # PUT /host_family_photos/1.xml
  def update
    @host_family_photo = HostFamilyPhoto.find(params[:id])

    respond_to do |format|
      if @host_family_photo.update_attributes(params[:host_family_photo])
        format.html { redirect_to(@host_family_photo, :notice => 'Host family photo was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @host_family_photo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /host_family_photos/1
  # DELETE /host_family_photos/1.xml
  def destroy
    @host_family_photo = HostFamilyPhoto.find(params[:id])
    @host_family_photo.destroy

    respond_to do |format|
      format.html { redirect_to(host_family_photos_url) }
      format.xml  { head :ok }
    end
  end
  
  private
	def set_layout
		@curr_menu = "layouts/user_menu"
		@curr_layout = "layouts/user_layout"
	end
end
