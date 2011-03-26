class AddHighestDegreeToCollegeList < ActiveRecord::Migration
  def self.up
    add_column :college_lists, :highest_degree, :string
  end

  def self.down
    remove_column :college_lists, :highest_degree
  end
end
