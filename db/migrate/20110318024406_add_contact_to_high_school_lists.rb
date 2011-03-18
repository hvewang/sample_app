class AddContactToHighSchoolLists < ActiveRecord::Migration
  def self.up
    add_column :high_school_lists, :contact, :string
  end

  def self.down
    remove_column :high_school_lists, :contact
  end
end
