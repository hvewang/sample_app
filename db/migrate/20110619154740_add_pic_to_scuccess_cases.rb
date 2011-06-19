class AddPicToScuccessCases < ActiveRecord::Migration
  def self.up
	add_column :success_cases, :success_case_pic_file_name, :string
    add_column :success_cases, :success_case_pic_content_type, :string
    add_column :success_cases, :success_case_pic_file_size, :integer
    add_column :success_cases, :success_case_pic_updated_at, :datetime
  end

  def self.down
	remove_column :success_cases, :success_case_pic_file_name 
    remove_column :success_cases, :success_case_pic_content_type 
    remove_column :success_cases, :success_case_pic_file_size 
    remove_column :success_cases, :success_case_pic_updated_at 
  end
end
