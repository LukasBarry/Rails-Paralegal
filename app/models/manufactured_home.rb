class ManufacturedHome < ActiveRecord::Base
  has_attached_file :m_home_affidavit, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :m_home_affidavit, content_type: /\Aimage\/.*\Z/
end
