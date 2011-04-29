class AddRankToHighschoolRankings < ActiveRecord::Migration
  def self.up
    add_column :highschool_rankings, :rank, :string
  end

  def self.down
    remove_column :highschool_rankings, :rank
  end
end
