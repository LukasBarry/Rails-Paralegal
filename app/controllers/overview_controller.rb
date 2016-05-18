class OverviewController < ApplicationController
	def index
		@buyer = Buyer.find(params[:buyer_id])
		@construction = @buyer.construction
		@easement = @buyer.easement
		@lien = @buyer.lien
		@manufactured = @buyer.manufactured_home
		@mortgage = @buyer.mortgage
		@occupancy = @buyer.occupancy
		@prior = @buyer.prior_policy
		@property = @buyer.property_use
		@tax = @buyer.tax
	end
	def new
		@buyer = Buyer.find(params[:buyer_id])
		@construction = @buyer.construction
		@easement = @buyer.easement
		@lien = @buyer.lien
		@manufactured = @buyer.manufactured_home
		@mortgage = @buyer.mortgage
		@occupancy = @buyer.occupancy
		@prior = @buyer.prior_policy
		@property = @buyer.property_use
		@tax = @buyer.tax
	end
end
