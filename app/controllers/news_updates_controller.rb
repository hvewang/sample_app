class NewsUpdatesController < ApplicationController
  before_filter :authenticate, :admin_user, :except => [:newslist, :newsdetails]
  before_filter :set_layout, :except => [:newslist, :newsdetails]
  before_filter :set_layout1, :only => [:newslist, :newsdetails]
  
  # GET /news_updates
  # GET /news_updates.xml
  def index
    @news_updates = NewsUpdate.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @news_updates }
    end
  end

  # GET /news_updates/1
  # GET /news_updates/1.xml
  def show
    @news_update = NewsUpdate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @news_update }
    end
  end

  # GET /news_updates/new
  # GET /news_updates/new.xml
  def new
    @news_update = NewsUpdate.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @news_update }
    end
  end

  # GET /news_updates/1/edit
  def edit
    @news_update = NewsUpdate.find(params[:id])
  end

  # POST /news_updates
  # POST /news_updates.xml
  def create
    @news_update = NewsUpdate.new(params[:news_update])

    respond_to do |format|
      if @news_update.save
        format.html { redirect_to(@news_update, :notice => 'News update was successfully created.') }
        format.xml  { render :xml => @news_update, :status => :created, :location => @news_update }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @news_update.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /news_updates/1
  # PUT /news_updates/1.xml
  def update
    @news_update = NewsUpdate.find(params[:id])

    respond_to do |format|
      if @news_update.update_attributes(params[:news_update])
        format.html { redirect_to(@news_update, :notice => 'News update was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @news_update.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /news_updates/1
  # DELETE /news_updates/1.xml
  def destroy
    @news_update = NewsUpdate.find(params[:id])
    @news_update.destroy

    respond_to do |format|
      format.html { redirect_to(news_updates_url) }
      format.xml  { head :ok }
    end
  end
  
  def newslist
	@title = "Latest News"
	
    news_type = params[:news_type]
	if (news_type.nil? || news_type.empty?) 
		news_type = "overseasnews"
	end
	
	set_label(news_type)
	@news_updates = NewsUpdate.find_all_by_news_type(news_type)
  end
  
  def newsdetails
	@title = "News Details"
	set_label(params[:news_type])
	@news_update = NewsUpdate.find(params[:id])
  end
  
  private
	def set_layout
		@curr_menu = "layouts/user_menu"
		@curr_layout = "layouts/user_layout"
	end
	
	def set_layout1
		@curr_menu = "layouts/news_menu"
		@curr_layout = "layouts/user_layout"
	end
	
	def set_label(news_type)
		if news_type == "OverseasNews"
			@titlelabel = "label.news.overseasnews"
		elsif news_type == "ApplicationNews"
			@titlelabel = "label.news.applicationnews"
		elsif news_type == "Guidelines"
			@titlelabel = "label.news.guidelines"
		elsif news_type == "Mustknown"
			@titlelabel = "label.news.mustknown"
		elsif news_type == "USNews"
			@titlelabel = "label.news.usnews"
		elsif news_type == "USStudyLife"
			@titlelabel = "label.news.usstudylife"
		elsif news_type == "USFoodLiving"
			@titlelabel = "label.news.usfoodliving"
		else
			@titlelabel = "label.news.overseasnews"
		end
	end
end
