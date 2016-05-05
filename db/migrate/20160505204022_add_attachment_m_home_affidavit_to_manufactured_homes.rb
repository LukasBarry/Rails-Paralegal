class AddAttachmentMHomeAffidavitToManufacturedHomes < ActiveRecord::Migration
  def self.up
    change_table :manufactured_homes do |t|
      t.attachment :m_home_affidavit
    end
  end

  def self.down
    remove_attachment :manufactured_homes, :m_home_affidavit
  end
end
