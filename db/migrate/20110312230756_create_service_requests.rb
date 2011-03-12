class CreateServiceRequests < ActiveRecord::Migration
  def self.up
    create_table :service_requests do |t|
      t.string :student_name
      t.string :year_of_birth
      t.string :gender
      t.string :parent_name
      t.string :relationship
      t.string :street
      t.string :city
      t.string :country
      t.string :nationality
      t.string :cell_phone
      t.string :home_phone
      t.string :email
      t.string :service_grade
      t.string :service_type
      t.string :service_city
      t.string :service_state
      t.text :service_detail
      t.string :way_to_know_nh
      t.text :comments
      t.string :status
      t.integer :updated_by

      t.timestamps
    end
  end

  def self.down
    drop_table :service_requests
  end
end
