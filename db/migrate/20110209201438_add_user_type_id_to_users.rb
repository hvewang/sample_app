class AddUserTypeIdToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :user_type_id, :integer, :default => 3
  end

  def self.down
    remove_column :users, :user_type_id
  end
end
