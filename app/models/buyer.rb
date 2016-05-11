class Buyer < ActiveRecord::Base
  has_one :construction
  has_one :easement
  has_one :lien
  has_one :manufactured_home
  has_one :mortgage
  has_one :occupancy
  has_one :prior_policy
  has_one :property_use
  has_one :tax
end
