class CreateHostFamilyPhotos < ActiveRecord::Migration
  def self.up
    create_table :host_family_photos do |t|
      t.integer :host_family_info_id

      t.timestamps
    end
  end

  def self.down
    drop_table :host_family_photos
  end
end
