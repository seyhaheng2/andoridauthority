class AddAttachmentLogoToControlsites < ActiveRecord::Migration
  def self.up
    change_table :controlsites do |t|
      t.attachment :logo
    end
  end

  def self.down
    remove_attachment :controlsites, :logo
  end
end
