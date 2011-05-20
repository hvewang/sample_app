class CreateStudentHostfamilyPictures < ActiveRecord::Migration
  def self.up
    create_table :student_hostfamily_pictures do |t|
      t.string :student_info
      t.string :family_info
      t.string :location

      t.timestamps
    end
  end

  def self.down
    drop_table :student_hostfamily_pictures
  end
end
