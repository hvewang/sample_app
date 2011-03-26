class CreateCollegeRankings < ActiveRecord::Migration
  def self.up
    create_table :college_rankings do |t|
      t.string :school_type
      t.integer :rank
      t.string :name_en
      t.string :name_cn
      t.string :tuition
      t.string :enrollment
      t.string :acceptance_rate
      t.string :retention_rate
      t.string :graduation_rate
      t.string :class_size
      t.string :sat_act
      t.integer :college_list_id
      t.string :status
      t.string :year

      t.timestamps
    end
  end

  def self.down
    drop_table :college_rankings
  end
end
