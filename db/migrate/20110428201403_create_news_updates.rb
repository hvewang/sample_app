class CreateNewsUpdates < ActiveRecord::Migration
  def self.up
    create_table :news_updates do |t|
      t.string :title_en
      t.string :title_cn
      t.string :news_type
      t.text :context
      t.string :status

      t.timestamps
    end
  end

  def self.down
    drop_table :news_updates
  end
end
