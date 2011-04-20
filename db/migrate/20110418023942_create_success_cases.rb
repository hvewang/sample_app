class CreateSuccessCases < ActiveRecord::Migration
  def self.up
    create_table :success_cases do |t|
      t.string :student_name
      t.string :school_name
      t.string :school_type
      t.string :pics
      t.string :status
      t.integer :user_id
      t.text :msg

      t.timestamps
    end
  end

  def self.down
    drop_table :success_cases
  end
end
