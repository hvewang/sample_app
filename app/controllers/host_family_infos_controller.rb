class HostFamilyInfosController < ApplicationController
  before_filter :authenticate, :admin_user, :except=>[:new, :create]
  before_filter :set_layout, :except=>[:new]
  
  # GET /host_family_infos
  # GET /host_family_infos.xml
  def index
    @host_family_infos = HostFamilyInfo.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @host_family_infos }
    end
  end

  # GET /host_family_infos/1
  # GET /host_family_infos/1.xml
  def show
    @host_family_info = HostFamilyInfo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @host_family_info }
    end
  end

  # GET /host_family_infos/new
  # GET /host_family_infos/new.xml
  def new
    @host_family_info = HostFamilyInfo.new
	
	@curr_menu = "layouts/hostfamily_menu"
	@curr_layout = "layouts/user_layout"
		
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @host_family_info }
    end
  end

  # GET /host_family_infos/1/edit
  def edit
    @host_family_info = HostFamilyInfo.find(params[:id])
	sg = @host_family_info.student_group
	sga = sg.split
	
	@host_family_info.student_group1 = sga[0]
	@host_family_info.student_group2 = sga[1]
	@host_family_info.student_group3 = sga[2]
	@host_family_info.student_group4 = sga[3]
  end

  # POST /host_family_infos
  # POST /host_family_infos.xml
  def create
    @host_family_info = HostFamilyInfo.new(params[:host_family_info])

    respond_to do |format|
      if @host_family_info.save
	    EmailNotifier.host_family_info(@host_family_info).deliver
		
        #format.html { redirect_to(@host_family_info, :notice => 'Host family info was successfully created.') }
		format.html { redirect_to new_host_family_info_url, :notice => 'Host family info was successfully created.'  }
        format.xml  { render :xml => @host_family_info, :status => :created, :location => @host_family_info }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @host_family_info.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /host_family_infos/1
  # PUT /host_family_infos/1.xml
  def update
    @host_family_info = HostFamilyInfo.find(params[:id])

    hfi = params[:host_family_info][:student_group]
	puts hfi;
	
    respond_to do |format|
      if @host_family_info.update_attributes(params[:host_family_info])
        format.html { redirect_to(@host_family_info, :notice => 'Host family info was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @host_family_info.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /host_family_infos/1
  # DELETE /host_family_infos/1.xml
  def destroy
    @host_family_info = HostFamilyInfo.find(params[:id])
    @host_family_info.destroy

    respond_to do |format|
      format.html { redirect_to(host_family_infos_url) }
      format.xml  { head :ok }
    end
  end
  
  private
	def set_layout
		@curr_menu = "layouts/user_menu"
		@curr_layout = "layouts/user_layout"
	end
end
