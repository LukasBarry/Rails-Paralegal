class OverviewController < ApplicationController
	def show
		@buyer = Buyer.find(params[:buyer_id])
		@construction = Construction.find(params[:id])
		@easement = Easement.find(params[:id])
		@lien = Lien.find(params[:id])
		@manufactured = ManufacturedHome.find(params[:id])
		# @mortgage = Mortgage.find(params[:id])
		@occupancy = Occupancy.find(params[:id])
		@prior = PriorPolicy.find(params[:id])
		@property = PropertyUse.find(params[:id])
		@tax = Tax.find(params[:id])
	end
	def new
		@buyer = Buyer.find(params[:buyer_id])
		@construction = Construction.find(params[:id])
		@easement = Easement.find(params[:id])
		@lien = Lien.find(params[:id])
		@manufactured = ManufacturedHome.find(params[:id])
		# @mortgage = Mortgage.find(params[:id])
		@occupancy = Occupancy.find(params[:id])
		@prior = PriorPolicy.find(params[:id])
		@property = PropertyUse.find(params[:id])
		@tax = Tax.find(params[:id])
	end
end
