class AddAttachmentPpCopyToPriorPolicies < ActiveRecord::Migration
  def self.up
    change_table :prior_policies do |t|
      t.attachment :pp_copy
    end
  end

  def self.down
    remove_attachment :prior_policies, :pp_copy
  end
end
