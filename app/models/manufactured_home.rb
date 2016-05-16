class ManufacturedHome < ActiveRecord::Base
  belongs_to :buyer
  has_attached_file :m_home_affidavit
  validates_attachment_content_type :m_home_affidavit, :content_type => ['application/pdf']
end
