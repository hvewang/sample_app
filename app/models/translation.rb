# == Schema Information
# Schema version: 20110309201705
#
# Table name: translations
#
#  id            :integer(4)      not null, primary key
#  nm            :string(255)
#  controller_nm :string(255)
#  model_nm      :string(255)
#  action_nm     :string(255)
#  func          :string(255)
#  zw_txt        :text
#  zw2_txt       :text
#  en_txt        :text
#  created_at    :datetime
#  updated_at    :datetime
#

class Translation < ActiveRecord::Base
	validates :nm, :presence => true, :uniqueness => true
	
	def force_utf
		#attributes.each {|key, value| value.force_encoding('utf-8') if value.encoding != 'utf-8' if value.kind_of?(String) }
	end
end
