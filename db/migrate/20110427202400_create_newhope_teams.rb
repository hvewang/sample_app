class CreateNewhopeTeams < ActiveRecord::Migration
  def self.up
    create_table :newhope_teams do |t|
      t.string :name_en
      t.string :name_cn
      t.string :title_en
      t.string :title_cn
      t.string :email
      t.string :phone
      t.string :record_type
      t.string :branch_name_en
      t.string :branch_name_cn
      t.string :country_en
      t.string :country_cn
      t.string :pic
      t.text :resume
      t.integer :sort_order
      t.string :status

      t.timestamps
    end
  end

  def self.down
    drop_table :newhope_teams
  end
end
