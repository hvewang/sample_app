class CollegeRankingsController < ApplicationController
  before_filter :admin_user 
  before_filter :set_layout 
  # GET /college_rankings
  # GET /college_rankings.xml
  def index
    @college_rankings = CollegeRanking.all.paginate(:page => params[:page], :per_page => 10)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @college_rankings }
    end
  end

  # GET /college_rankings/1
  # GET /college_rankings/1.xml
  def show
    @college_ranking = CollegeRanking.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @college_ranking }
    end
  end

  # GET /college_rankings/new
  # GET /college_rankings/new.xml
  def new
    @college_ranking = CollegeRanking.new
	@college_lists = CollegeList.find_by_sql("select name_en, id from college_lists order by name_en")

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @college_ranking }
    end
  end

  # GET /college_rankings/1/edit
  def edit
    @college_ranking = CollegeRanking.find(params[:id])
	
	@college_lists = CollegeList.find_by_sql("select name_en, id from college_lists order by name_en")
  end

  # POST /college_rankings
  # POST /college_rankings.xml
  def create
    @college_ranking = CollegeRanking.new(params[:college_ranking])

    respond_to do |format|
      if @college_ranking.save
        format.html { redirect_to(@college_ranking, :notice => 'College ranking was successfully created.') }
        format.xml  { render :xml => @college_ranking, :status => :created, :location => @college_ranking }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @college_ranking.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /college_rankings/1
  # PUT /college_rankings/1.xml
  def update
    @college_ranking = CollegeRanking.find(params[:id])

    respond_to do |format|
      if @college_ranking.update_attributes(params[:college_ranking])
        format.html { redirect_to(@college_ranking, :notice => 'College ranking was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @college_ranking.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /college_rankings/1
  # DELETE /college_rankings/1.xml
  def destroy
    @college_ranking = CollegeRanking.find(params[:id])
    @college_ranking.destroy

    respond_to do |format|
      format.html { redirect_to(college_rankings_url) }
      format.xml  { head :ok }
    end
  end
  
  private
	def set_layout
		@curr_menu = "layouts/user_menu"
		@curr_layout = "layouts/user_layout"
	end
end
