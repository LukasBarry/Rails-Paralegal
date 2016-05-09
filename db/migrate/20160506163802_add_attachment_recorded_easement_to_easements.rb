class AddAttachmentRecordedEasementToEasements < ActiveRecord::Migration
  def self.up
    change_table :easements do |t|
      t.attachment :recorded_easement
    end
  end

  def self.down
    remove_attachment :easements, :recorded_easement
  end
end
