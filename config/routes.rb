SampleApp::Application.routes.draw do

  resources :host_family_photos

  resources :student_hostfamily_pictures

  get "news_updates/newslist"
  get "news_updates/newsdetails"
  resources :news_updates

  get "newhope_teams/advisor"
  get "newhope_teams/team"
  get "newhope_teams/all"
  
  resources :newhope_teams

  get "services/general"

  get "services/dayschool"

  get "services/boardingschool"

  get "services/publicschool"

  get "services/undergraduate"

  get "services/graduate"

  get "services/hostfamily"

  get "services/hostfamilyapplication"

  get "services/docwriting"

  get "services/followup"
  get "services/news"
  get "services/newsdetails"
  get "services/summercamp"

  resources :highschool_rankings

  get "success_cases/allstudent"
  get "success_cases/highschool"
  get "success_cases/undergraduate"
  get "success_cases/graduate"
  get "success_cases/other"
  
  resources :success_cases

  resources :locations

  resources :graduate_school_rankings

  resources :college_rankings

  resources :college_lists

  resources :high_school_lists

  resources :host_family_infos

  resources :service_requests

  resources :service_grades

  resources :translations

  get "host_families/qualification"
  get "host_families/applicationform"
  get "host_families/whynewhope"
  get "host_families/whatishomestay"
  get "host_families/faq"
  get "host_families/homestayphoto"
  get "host_families/showhomestayphoto"
  get "host_families/servicerequestform"
  get "host_families/availablehomestay"
  get "host_families/responsibility"
  get "host_families/guideline"
  get "host_families/question"
  post "host_families/submitquestion"
  get "host_families/showhostfamilyphoto"
  get "host_families/news"
  get "host_families/newsdetails"

  get "colleges/collegedetail"
  get "colleges/collegelist"
  get "colleges/bachelor"
  get "colleges/msphd"
  get "colleges/communitycollege"
  get "colleges/universityrank"
  get "colleges/collegerank"
  get "colleges/graduateschoolrank"
  get "colleges/news"
  get "colleges/newsdetails"

  get "high_schools/highschooldetail"
  get "high_schools/allhighschool"
  get "high_schools/privateday"
  get "high_schools/privateboarding"
  get "high_schools/public"
  get "high_schools/rank"
  get "high_schools/applicationprocedure"
  get "high_schools/otherservice"
  get "high_schools/academicservice"
  get "high_schools/news"
  get "high_schools/newsdetails"
  
  get "testimonials/parent"
  get "testimonials/student"
  get "testimonials/hostfamily"
  get "testimonials/other"
  get "testimonials/parent1"
  get "testimonials/student1"
  get "testimonials/hostfamily1"
  get "testimonials/other1"
  get "testimonials/detail"
  
  resources :sessions, :only => [:new, :create, :destroy]

  get "users/micropost"
  #match '/users/micropost', :to => 'users#micropost'
  resources :users do
	member do
		get :following, :followers
	end
  end

  resources :microposts, :only => [:index, :create, :destroy]
  resources :relationships, :only => [:create, :destroy]
  
  #get "pages/home"

  #get "pages/contact"
  
  #get "pages/about"
  #get "pages/help"
  
    match '/home', :to => 'pages#home'
	match '/contact', :to => 'pages#contact'
	match '/about', :to => 'pages#about'
	match '/help', :to => 'pages#help'
	match '/news', :to => 'pages#news'
	match '/successcase', :to => 'pages#successcase'
	match 'testimonial', :to=> 'testimonials#testimoniallist'
	
	match '/signup', :to => 'users#new'
	match '/signin', :to => 'sessions#new'
	match '/signout', :to => 'sessions#destroy'
	match '/mypost', :to => 'users#micropost'
	
	match '/service', :to => 'pages#service'
	match '/ourteam', :to => 'pages#ourteam'
	match '/whynewhope', :to => 'pages#whynewhope'
	
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => "pages#home"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
