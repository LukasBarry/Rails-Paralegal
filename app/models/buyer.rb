class Buyer < ActiveRecord::Base
  has_many :construction
  has_many :easement
  has_many :lien
  has_many :manufactured_home
  has_many :mortgage
  has_many :occupancy
  has_many :prior_policy
  has_many :property_use
  has_many :tax
end
