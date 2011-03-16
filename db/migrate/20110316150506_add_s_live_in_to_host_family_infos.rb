class AddSLiveInToHostFamilyInfos < ActiveRecord::Migration
  def self.up
    add_column :host_family_infos, :s_live_in, :string
  end

  def self.down
    remove_column :host_family_infos, :s_live_in
  end
end
