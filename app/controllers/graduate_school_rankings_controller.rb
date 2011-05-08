class GraduateSchoolRankingsController < ApplicationController
  before_filter :admin_user 
  before_filter :set_layout 
  
  # GET /graduate_school_rankings
  # GET /graduate_school_rankings.xml
  def index
    @graduate_school_rankings = GraduateSchoolRanking.all.paginate(:page => params[:page], :per_page => 10)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @graduate_school_rankings }
    end
  end

  # GET /graduate_school_rankings/1
  # GET /graduate_school_rankings/1.xml
  def show
    @graduate_school_ranking = GraduateSchoolRanking.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @graduate_school_ranking }
    end
  end

  # GET /graduate_school_rankings/new
  # GET /graduate_school_rankings/new.xml
  def new
    @graduate_school_ranking = GraduateSchoolRanking.new
	@college_lists = CollegeList.find_by_sql("select name_en, id from college_lists order by name_en")

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @graduate_school_ranking }
    end
  end

  # GET /graduate_school_rankings/1/edit
  def edit
    @graduate_school_ranking = GraduateSchoolRanking.find(params[:id])
	@college_lists = CollegeList.find_by_sql("select name_en, id from college_lists order by name_en")
  end

  # POST /graduate_school_rankings
  # POST /graduate_school_rankings.xml
  def create
    @graduate_school_ranking = GraduateSchoolRanking.new(params[:graduate_school_ranking])
    @college_lists = CollegeList.find_by_sql("select name_en, id from college_lists order by name_en")
	
    respond_to do |format|
      if @graduate_school_ranking.save
        format.html { redirect_to(@graduate_school_ranking, :notice => 'Graduate school ranking was successfully created.') }
        format.xml  { render :xml => @graduate_school_ranking, :status => :created, :location => @graduate_school_ranking }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @graduate_school_ranking.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /graduate_school_rankings/1
  # PUT /graduate_school_rankings/1.xml
  def update
    @graduate_school_ranking = GraduateSchoolRanking.find(params[:id])

    respond_to do |format|
      if @graduate_school_ranking.update_attributes(params[:graduate_school_ranking])
        format.html { redirect_to(@graduate_school_ranking, :notice => 'Graduate school ranking was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @graduate_school_ranking.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /graduate_school_rankings/1
  # DELETE /graduate_school_rankings/1.xml
  def destroy
    @graduate_school_ranking = GraduateSchoolRanking.find(params[:id])
    @graduate_school_ranking.destroy

    respond_to do |format|
      format.html { redirect_to(graduate_school_rankings_url) }
      format.xml  { head :ok }
    end
  end
  
  private
  def set_layout
	@curr_menu = "layouts/user_menu"
	@curr_layout = "layouts/user_layout"
  end
end
