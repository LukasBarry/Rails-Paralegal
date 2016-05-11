class PriorPolicy < ActiveRecord::Base
  has_attached_file :pp_copy, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :pp_copy, content_type: /\Aimage\/.*\Z/
  belongs_to :buyer
end
