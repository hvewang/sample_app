class AddCharacteristicToHighSchoolLists < ActiveRecord::Migration
  def self.up
    add_column :high_school_lists, :characteristics, :text
  end

  def self.down
    remove_column :high_school_lists, :characteristics
  end
end
