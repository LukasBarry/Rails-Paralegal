class Easement < ActiveRecord::Base
  has_attached_file :recorded_easement, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :recorded_easement, content_type: /\Aimage\/.*\Z/
end
