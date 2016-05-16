class PriorPolicy < ActiveRecord::Base
  belongs_to :buyer
  has_attached_file :pp_copy
  validates_attachment_content_type :pp_copy, :content_type =>['application/pdf']
end
