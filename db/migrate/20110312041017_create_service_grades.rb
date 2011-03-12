class CreateServiceGrades < ActiveRecord::Migration
  def self.up
    create_table :service_grades do |t|
      t.string :grade
      t.string :en_label
      t.string :cn_label

      t.timestamps
    end
  end

  def self.down
    drop_table :service_grades
  end
end
