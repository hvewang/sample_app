require 'faker'

namespace :db do
	desc "Fill database with sample data"
	task :populate => :environment do
		#Rake::Task['db:reset'].invoke
		#Rake::Task['db:drop'].invoke
		#Rake::Task['db:create'].invoke
		Rake::Task['db:migrate'].invoke
		
		add_users
		#add_microposts
		#make_relationships
	end
end

def add_users
	user = User.create!(:name => "admin",
		:email => "baiqing_wang@hotmail.com",
		:password => "foobar",
		:password_confirmation => "foobar",
		:user_type_id => 0
	)
	user.password = "foobar"
	user.password_confirmation = "foobar"
	user.user_type_id = 0
	user.save!
	
	user = User.create!(:name => "baiqing",
		:email => "baiqing.wang66@gmail.com",
		:password => "foobar",
		:password_confirmation => "foobar",
		:user_type_id => 1
	)
	user.password = "foobar"
	user.password_confirmation = "foobar"
	user.user_type_id = 0
	user.save!
	
	user = User.create!(:name => "linali",
		:email => "linali99@hotmail.com",
		:password => "foobar",
		:password_confirmation => "foobar",
		:user_type_id => 0
	)
	user.password = "foobar"
	user.password_confirmation = "foobar"
	user.user_type_id = 0
	user.save!
	
	user = User.create!(:name => "yanli",
		:email => "winnieh888@hotmail.com",
		:password => "foobar",
		:password_confirmation => "foobar",
		:user_type_id => 1
	)
	user.password = "foobar"
	user.password_confirmation = "foobar"
	user.user_type_id = 1
	user.save!
	
	user = User.create!(:name => "luling",
		:email => "wll528528@163.com",
		:password => "foobar",
		:password_confirmation => "foobar",
		:user_type_id => 1
	)
	user.password = "foobar"
	user.password_confirmation = "foobar"
	user.user_type_id = 1
	user.save!
	
	user = User.create!(:name => "hannah",
		:email => "hannah@hotmail.com",
		:password => "foobar",
		:password_confirmation => "foobar",
		:user_type_id => 2
	)
	user.password = "foobar"
	user.password_confirmation = "foobar"
	user.user_type_id = 2
	user.save!
	
	user = User.create!(:name => "vickie",
		:email => "vickie@hotmail.com",
		:password => "foobar",
		:password_confirmation => "foobar",
		:user_type_id => 3
	)
	user.password = "foobar"
	user.password_confirmation = "foobar"
	user.user_type_id = 3
	user.save!
	
	99.times do |n|
		name = Faker::Name.name
		email = "example-#{n+1}@railstutorial.org"
		password = "password"
		User.create!(:name => name,
			:email => email,
			:password => password,
			:password_confirmation => password,
			:user_type_id => 2)
	end
end

def add_microposts
	User.all(:limit => 6).each do |user|
		50.times do
			user.microposts.create!(:title => "My title", :content => Faker::Lorem.sentence(5))
		end
	end
end

def make_relationships
	users = User.all
	user = users.first
	following = users[1..50]
	followers = users[3..40]
	following.each { |followed| user.follow!(followed) }
	followers.each { |follower| follower.follow!(user) }
end