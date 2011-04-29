class NewhopeTeamsController < ApplicationController
  before_filter :admin_user, :except => [:advisor]
  before_filter :set_layout, :except => [:advisor]
  before_filter :set_layout1, :only => [:advisor]
  
  # GET /newhope_teams
  # GET /newhope_teams.xml
  def index
    @newhope_teams = NewhopeTeam.all

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
  
  def advisor
	@title = "New Hope Team"
	@newhope_teams = NewhopeTeam.all
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
