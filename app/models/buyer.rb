class Buyer < ActiveRecord::Base
  has_many :constructions
  has_many :easements
  has_many :liens
  has_many :manufactured_homes
  has_many :mortgages
  has_many :occupancies
  has_many :prior_policies
  has_many :property_uses
  has_many :taxes
end
