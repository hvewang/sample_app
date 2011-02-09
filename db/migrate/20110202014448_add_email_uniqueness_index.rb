class AddEmailUniquenessIndex < ActiveRecord::Migration
  def self.up
	#add_index :users, :email, :unique => true
	#but still cannot add unique constrain...
	execute "alter table sample_app_development.users ADD INDEX users_email(email)"
  end

  def self.down
	#remove_index :users, :email
	execute "alter table  DROP INDEX users_email, sample_app_development.users"
  end
end
