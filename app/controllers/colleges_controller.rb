class CollegesController < ApplicationController
  before_filter :set_layout
  
  def bachelor
	@curr_menu = "layouts/college_menu"
	@title = "US Bechelor School"
	@titlelabel = 'label.college.allcollegelistbs'
	
	@college_lists = CollegeList.find_by_sql("select * from college_lists where highest_degree = 'bs' and status = 'Active'").paginate(:page => params[:page], :per_page => 10) 
	render :action => "collegelist"
  end

  def msphd
	@curr_menu = "layouts/college_menu"
	@title = "US Master & PhD School"
	
	@titlelabel = 'label.college.allcollegelistmsphd'
	@college_lists = CollegeList.find_by_sql("select * from college_lists where highest_degree in ('ms', 'phd') and status = 'Active'").paginate(:page => params[:page], :per_page => 10)
	render :action => "collegelist"
  end

  def communitycollege
	@curr_menu = "layouts/college_menu"
	@title = "US Community College"
	
	@titlelabel = 'label.college.allcollegelistcc'
	@college_lists = CollegeList.find_by_sql("select * from college_lists where highest_degree ='as' and status = 'Active'").paginate(:page => params[:page], :per_page => 10)
	render :action => "collegelist"
  end
  
  def universityrank
	@curr_menu = "layouts/college_menu"
	@title = "US National University Ranking"
	@titlelabel = 'label.college.label.universityrank'
	
	@college_rankings = CollegeRanking.find_by_sql("select * from college_rankings where school_type='university' order by rank")
  end
  
  def collegerank
	@curr_menu = "layouts/college_menu"
	@title = "US Liberal Arts College Ranking"
	@titlelabel = 'label.college.label.collegerank'
	
	@college_rankings = CollegeRanking.find_by_sql("select * from college_rankings where school_type='college' order by rank")
	render :action=> "universityrank"
  end
  
  def graduateschoolrank
	@curr_menu = "layouts/college_menu"
	@title = "US Graduate School Ranking"
	
	category = params[:category]
	if category.nil?
		if I18n.locale != session[:prev_locale]
			category = session[:pre_category]
		else
			redirect_to colleges_universityrank_path
		end
	end
	
	if category == 'business'
		@titlelabel = 'label.college.label.gsbusinessrank'
	elsif category == 'education'
		@titlelabel = 'label.college.label.gseducationrank'
	elsif category == 'engineering'
		@titlelabel = 'label.college.label.gsengineeringrank'
	elsif category == 'law'
		@titlelabel = 'label.college.label.gslawrank'
	elsif category == 'medical'
		@titlelabel = 'label.college.label.gsmedicalrank'
	elsif category == 'science'
		@titlelabel = 'label.college.label.gssciencerank'
	elsif category == 'library'
		@titlelabel = 'label.college.label.gslibraryrank'
	elsif category == 'social'
		@titlelabel = 'label.college.label.gssocialrank'
	elsif category == 'health'
		@titlelabel = 'label.college.label.gshealthrank'
	elsif category == 'public'
		@titlelabel = 'label.college.label.gspublicrank'
	elsif category == 'fine'
		@titlelabel = 'label.college.label.gsfinerank'
	end
	
	@graduate_school_rankings = GraduateSchoolRanking.find_all_by_category(category)
	
	session[:prev_locale] = I18n.locale
	session[:pre_category] = category
  end
  
  def collegelist
	@title = "US College List"
	@titlelabel = 'label.college.allcollegelist'
	
	@college_lists = CollegeList.find(:all, :conditions => ["status = 'Active'"], :order => "updated_at desc").paginate(:page => params[:page], :per_page => 10)
  end
  
  def collegedetail
	@title = "College Details"
	college_id = params[:id]
	if college_id.nil?
		if I18n.locale != session[:prev_locale]
			college_id = session[:prec_college_id]
		else
			redirect_to colleges_collegelist_path
		end
	end
	
	@college_list = CollegeList.find_by_id(college_id)
	
	#@pics = @college_list.pics.split

	session[:prev_locale] = I18n.locale
	session[:prec_college_id] = college_id
  end
  
  def news
	@title = "Latest College News"
	
    news_type = params[:news_type]
	if (news_type.nil? || news_type.empty?) 
		news_type = "CollegeNews"
	end
	
	set_label(news_type)
	if (news_type.nil? || news_type.empty?)
		@news_updates = NewsUpdate.all.paginate(:page => params[:page], :per_page => 10)
	else
		@news_updates = NewsUpdate.find_all_by_news_type(news_type).paginate(:page => params[:page], :per_page => 10)
	end
  end
  
  def newsdetails
	@title = "College News Details"
	set_label(params[:news_type])
	
	news_id = params[:id]
	if news_id.nil?
		if I18n.locale != session[:prev_locale]
			news_id = session[:prec_news_id]
		else
			redirect_to high_school_news_path
		end
	end
	
	@news_update = NewsUpdate.find(news_id)

	session[:prev_locale] = I18n.locale
	session[:prec_news_id] = news_id
  end

  private
	def set_layout
		@curr_layout = "layouts/user_layout"
		@curr_menu = "layouts/college_menu"
	end
	
	def set_label(news_type)
		if news_type == "CollegeNews"
			@titlelabel = "label.highschool.label.latestnews"
		elsif news_type == "CollegeGraduate"
			@titlelabel = "label.highschool.label.hsgraduate"
		elsif news_type == "CollegeFAQ"
			@titlelabel = "label.hostfamily.homestay.faq"
		else
			@titlelabel = "header.label.latestnews"
		end
	end
end
