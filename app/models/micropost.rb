# == Schema Information
# Schema version: 20110210222221
#
# Table name: microposts
#
#  id         :integer(4)      not null, primary key
#  title      :string(255)
#  content    :text
#  user_id    :integer(4)
#  created_at :datetime
#  updated_at :datetime
#

class Micropost < ActiveRecord::Base
	attr_accessible :title, :content
	
	belongs_to :user
	
	validates :title, :presence => true, :length => { :maximum => 50 }
	validates :content, :presence => true, :length => { :maximum => 140 }
	validates :user_id, :presence => true
	
	default_scope :order => 'microposts.created_at DESC'
	scope :from_users_followed_by, lambda { |user| followed_by(user) }
	
	private
	def self.followed_by(user)
		followed_ids = user.following.map(&:id).join(", ")
		if followed_ids.empty?
			followed_ids = user.id
		end
		
		where("user_id IN (#{followed_ids}) OR user_id = ?", user)
	end
end
