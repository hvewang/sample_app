class AddHighschoolpdfToHighSchoolLists < ActiveRecord::Migration
  def self.up
	add_column :high_school_lists, :high_school_pdf_file_name, :string
    add_column :high_school_lists, :high_school_pdf_content_type, :string
    add_column :high_school_lists, :high_school_pdf_file_size, :integer
    add_column :high_school_lists, :high_school_pdf_updated_at, :datetime
  end

  def self.down
	remove_column :high_school_lists, :high_school_pdf_file_name 
    remove_column :high_school_lists, :high_school_pdf_content_type 
    remove_column :high_school_lists, :high_school_pdf_file_size 
    remove_column :high_school_lists, :high_school_pdf_updated_at 
  end
end
