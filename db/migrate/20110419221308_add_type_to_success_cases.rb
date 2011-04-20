class AddTypeToSuccessCases < ActiveRecord::Migration
  def self.up
    add_column :success_cases, :type, :string
  end

  def self.down
    remove_column :success_cases, :type
  end
end
