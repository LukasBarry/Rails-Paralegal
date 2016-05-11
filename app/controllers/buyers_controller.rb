class BuyersController < ApplicationController

  def show
    @buyer = Buyer.new
  end

  def create
    @buyer = Buyer.create(buyer_params)
      if @buyer.save
        redirect_to root_path
      end
  end


  private
  def buyer_params
    params.require(:buyer).permit(:current_owner, :borrower, :property_address, :county, :purchase_price, :owners_coverage, :lender_name, :type_of_loan, :loan_amount, :loan_number, :type_of_policy, :icl_requested, :alta_endorsement)
  end
end
