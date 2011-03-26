class CreateGraduateSchoolRankings < ActiveRecord::Migration
  def self.up
    create_table :graduate_school_rankings do |t|
      t.string :category
      t.integer :rank
      t.string :name_en
      t.string :name_cn
      t.string :tuition
      t.string :enrollment
      t.string :gpa
      t.string :gmat
      t.string :acceptance_rate
      t.string :salary
      t.string :graduation_rate
      t.integer :college_list_id
      t.string :status
      t.string :year

      t.timestamps
    end
  end

  def self.down
    drop_table :graduate_school_rankings
  end
end
