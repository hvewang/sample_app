class AddCellhomephoneToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :cellphone, :string
    add_column :users, :homephone, :string
  end

  def self.down
    remove_column :users, :homephone
    remove_column :users, :cellphone
  end
end
