class CreateTranslations < ActiveRecord::Migration
  def self.up
    create_table :translations do |t|
      t.string :nm
      t.string :controller_nm
      t.string :model_nm
      t.string :action_nm
      t.string :func
      #t.text :en_txt
      t.text :zw_txt
	  t.text :zw2_txt
	  t.text :en_txt

      t.timestamps
    end
  end

  def self.down
    drop_table :translations
  end
end
