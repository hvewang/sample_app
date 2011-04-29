class CreateHighschoolRankings < ActiveRecord::Migration
  def self.up
    create_table :highschool_rankings do |t|
      t.string :year
      t.string :name_en
      t.string :name_cn
      t.string :address
      t.string :phone
      t.string :url
      t.string :usnews_link
      t.string :comments
      t.string :status

      t.timestamps
    end
  end

  def self.down
    drop_table :highschool_rankings
  end
end
