class AddStatusToHostFamilyInfos < ActiveRecord::Migration
  def self.up
    add_column :host_family_infos, :status, :string
  end

  def self.down
    remove_column :host_family_infos, :status
  end
end
