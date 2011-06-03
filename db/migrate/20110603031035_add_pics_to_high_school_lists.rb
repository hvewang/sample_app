class AddPicsToHighSchoolLists < ActiveRecord::Migration
  def self.up
	add_column :high_school_lists, :high_school_pic_file_name, :string
    add_column :high_school_lists, :high_school_pic_content_type, :string
    add_column :high_school_lists, :high_school_pic_file_size, :integer
    add_column :high_school_lists, :high_school_pic_updated_at, :datetime
	
	add_column :high_school_lists, :high_school_city_pic_file_name, :string
    add_column :high_school_lists, :high_school_city_pic_content_type, :string
    add_column :high_school_lists, :high_school_city_pic_file_size, :integer
    add_column :high_school_lists, :high_school_city_pic_updated_at, :datetime
  end

  def self.down
	remove_column :high_school_lists, :high_school_city_pic_file_name 
    remove_column :high_school_lists, :high_school_city_pic_content_type 
    remove_column :high_school_lists, :high_school_city_pic_file_size 
    remove_column :high_school_lists, :high_school_city_pic_updated_at 
  
	remove_column :high_school_lists, :high_school_pic_file_name 
    remove_column :high_school_lists, :high_school_pic_content_type 
    remove_column :high_school_lists, :high_school_pic_file_size 
    remove_column :high_school_lists, :high_school_pic_updated_at 
  end
end
