class AddPicToStudentHostfamilyPictures < ActiveRecord::Migration
  def self.up
    add_column :student_hostfamily_pictures, :pic_file_name, :string
    add_column :student_hostfamily_pictures, :pic_content_type, :string
    add_column :student_hostfamily_pictures, :pic_file_size, :integer
    add_column :student_hostfamily_pictures, :pic_updated_at, :datetime
  end

  def self.down
    remove_column :student_hostfamily_pictures, :pic_updated_at
    remove_column :student_hostfamily_pictures, :pic_file_size
    remove_column :student_hostfamily_pictures, :pic_content_type
    remove_column :student_hostfamily_pictures, :pic_file_name
  end
end
