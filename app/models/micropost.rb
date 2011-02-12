class Micropost < ActiveRecord::Base
	attr_accessible :title, :content
	
	belongs_to :user
	
	validates :title, :presence => true, :length => { :maximum => 50 }
	validates :content, :presence => true, :length => { :maximum => 140 }
	validates :user_id, :presence => true
	
	default_scope :order => 'microposts.created_at DESC'
end
