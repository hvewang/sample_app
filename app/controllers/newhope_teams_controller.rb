class NewhopeTeamsController < ApplicationController
  before_filter :admin_user, :except => [:advisor, :team, :all]
  before_filter :set_layout, :except => [:advisor, :team, :all]
  before_filter :set_layout1, :only => [:advisor, :team, :all]
  
  # GET /newhope_teams
  # GET /newhope_teams.xml
  def index
    @newhope_teams = NewhopeTeam.all.paginate(:page => params[:page], :per_page => 10)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @newhope_teams }
    end
  end

  # GET /newhope_teams/1
  # GET /newhope_teams/1.xml
  def show
    @newhope_team = NewhopeTeam.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @newhope_team }
    end
  end

  # GET /newhope_teams/new
  # GET /newhope_teams/new.xml
  def new
    @newhope_team = NewhopeTeam.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @newhope_team }
    end
  end

  # GET /newhope_teams/1/edit
  def edit
    @newhope_team = NewhopeTeam.find(params[:id])
  end

  # POST /newhope_teams
  # POST /newhope_teams.xml
  def create
    @newhope_team = NewhopeTeam.new(params[:newhope_team])

    respond_to do |format|
      if @newhope_team.save
        format.html { redirect_to(@newhope_team, :notice => 'Newhope team was successfully created.') }
        format.xml  { render :xml => @newhope_team, :status => :created, :location => @newhope_team }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @newhope_team.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /newhope_teams/1
  # PUT /newhope_teams/1.xml
  def update
    @newhope_team = NewhopeTeam.find(params[:id])

    respond_to do |format|
      if @newhope_team.update_attributes(params[:newhope_team])
        format.html { redirect_to(@newhope_team, :notice => 'Newhope team was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @newhope_team.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /newhope_teams/1
  # DELETE /newhope_teams/1.xml
  def destroy
    @newhope_team = NewhopeTeam.find(params[:id])
    @newhope_team.destroy

    respond_to do |format|
      format.html { redirect_to(newhope_teams_url) }
      format.xml  { head :ok }
    end
  end
  
  def all
	@title = "New Hope Team"
	@newhope_teams = NewhopeTeam.find(:all, :order=>"updated_at desc").paginate(:page => params[:page], :per_page => 2)
	@translation = Translation.find_by_nm('newhopeteam.introduction')
  end
  
  def advisor
	@title = "New Hope Team - Advisor"
	#@newhope_teams = NewhopeTeam.find_all_by_record_type('Advisor').paginate(:page => params[:page], :per_page => 3)
	@newhope_teams = NewhopeTeam.find(:all, :conditions=>['record_type=?', 'Advisor'], :order=>'updated_at desc').paginate(:page => params[:page], :per_page => 3)
  end
  
  def team
    branch_name = params[:branch_name]
	if (branch_name.nil?) 
		if I18n.locale != session[:prev_locale]
			branch_name = session[:prec_branch_name]
		else
			redirect_to ourteam_path
		end
	end
	
	
	if (branch_name == "Xian")
		@titlelabel = 'label.ourteam.china.xian'
	elsif (branch_name == "Chicago")
		@titlelabel = 'label.ourteam.usa.chicago'
	else
		@titlelabel = ""
	end
	
	@title = "New Hope Team - #{branch_name}"
	#@newhope_teams = NewhopeTeam.find_all_by_branch_name_en(branch_name).paginate(:page => params[:page], :per_page => 3)
	@newhope_teams = NewhopeTeam.find(:all, :conditions=>['branch_name_en=?', branch_name], :order=>"updated_at desc").paginate(:page => params[:page], :per_page => 3)
	
	session[:prev_locale] = I18n.locale
	session[:prec_branch_name] = branch_name
  end
  
  private
  def set_layout
		@curr_menu = "layouts/user_menu"
		@curr_layout = "layouts/user_layout"
  end
  
  def set_layout1
		@curr_menu = "layouts/ourteam_menu"
		@curr_layout = "layouts/user_layout"
  end
end
