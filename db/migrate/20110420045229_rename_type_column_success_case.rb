class RenameTypeColumnSuccessCase < ActiveRecord::Migration
  def self.up
	remove_column :success_cases, :type
	add_column :success_cases, :record_type, :string
  end

  def self.down
	remove_column :success_cases, :record_type
  end
end
