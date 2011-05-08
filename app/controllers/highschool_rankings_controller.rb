class HighschoolRankingsController < ApplicationController
  before_filter :admin_user 
  before_filter :set_layout 
  
  # GET /highschool_rankings
  # GET /highschool_rankings.xml
  def index
    @highschool_rankings = HighschoolRanking.all.paginate(:page => params[:page], :per_page => 10)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @highschool_rankings }
    end
  end

  # GET /highschool_rankings/1
  # GET /highschool_rankings/1.xml
  def show
    @highschool_ranking = HighschoolRanking.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @highschool_ranking }
    end
  end

  # GET /highschool_rankings/new
  # GET /highschool_rankings/new.xml
  def new
    @highschool_ranking = HighschoolRanking.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @highschool_ranking }
    end
  end

  # GET /highschool_rankings/1/edit
  def edit
    @highschool_ranking = HighschoolRanking.find(params[:id])
  end

  # POST /highschool_rankings
  # POST /highschool_rankings.xml
  def create
    @highschool_ranking = HighschoolRanking.new(params[:highschool_ranking])

    respond_to do |format|
      if @highschool_ranking.save
        format.html { redirect_to(@highschool_ranking, :notice => 'Highschool ranking was successfully created.') }
        format.xml  { render :xml => @highschool_ranking, :status => :created, :location => @highschool_ranking }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @highschool_ranking.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /highschool_rankings/1
  # PUT /highschool_rankings/1.xml
  def update
    @highschool_ranking = HighschoolRanking.find(params[:id])

    respond_to do |format|
      if @highschool_ranking.update_attributes(params[:highschool_ranking])
        format.html { redirect_to(@highschool_ranking, :notice => 'Highschool ranking was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @highschool_ranking.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /highschool_rankings/1
  # DELETE /highschool_rankings/1.xml
  def destroy
    @highschool_ranking = HighschoolRanking.find(params[:id])
    @highschool_ranking.destroy

    respond_to do |format|
      format.html { redirect_to(highschool_rankings_url) }
      format.xml  { head :ok }
    end
  end
  
  private
	def set_layout
		@curr_menu = "layouts/user_menu"
		@curr_layout = "layouts/user_layout"
	end
end
