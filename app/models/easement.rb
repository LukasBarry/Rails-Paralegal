class Easement < ActiveRecord::Base
  belongs_to :buyer
  has_attached_file :recorded_easement
  validates_attachment_content_type :recorded_easement, :content_type =>['application/pdf']
end
