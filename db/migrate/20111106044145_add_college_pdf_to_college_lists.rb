class AddCollegePdfToCollegeLists < ActiveRecord::Migration
  def self.up
	add_column :college_lists, :college_pdf_file_name, :string
    add_column :college_lists, :college_pdf_content_type, :string
    add_column :college_lists, :college_pdf_file_size, :integer
    add_column :college_lists, :college_pdf_updated_at, :datetime
  end

  def self.down
	remove_column :college_lists, :college_pdf_file_name 
    remove_column :college_lists, :college_pdf_content_type 
    remove_column :college_lists, :college_pdf_file_size 
    remove_column :college_lists, :college_pdf_updated_at 
  end
end
