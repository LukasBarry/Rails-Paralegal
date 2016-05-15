class ManufacturedHome < ActiveRecord::Base
  belongs_to :buyer
  has_attached_file :m_home_affidavit, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :m_home_affidavit, content_type: /\Aimage\/.*\Z/

  has_attached_file :uploaded_file
  validates_attachment_content_type :uploaded_file, :content_type =>['application/pdf']
end
