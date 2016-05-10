class FormsController < ApplicationController
  def show_buyers
    @buyer = Buyer.new
    # @buyer = Buyer.find(params[:id])
  end

  def create
    @buyer = Buyer.create(buyer_params)
      if @buyer.save
        redirect_to @buyer
      else
        render 'new'
      end
  end

  private
  def buyer_params
    params.require(:buyer).permit(:current_owner, :borrower, :property_address, :county, :purchase_price, :owners_coverage, :lender_name, :type_of_loan, :loan_amount, :loan_number, :type_of_policy, :icl_requested, :alta_endorsement)
  end
  def construction_params
    params.require(:construction).permit(:construct_complete, :construct_lien_appointed, :construct_lien_name)
  end
  def easement_params
    params.require(:easement).permit(:exists, :effects, :recorded_easement)
  end
  def manufactured_home_params
    params.require(:manufactured_home).permit(:m_home_exists, :m_home_real_estate, :m_home_affidavit)
  end
  def lien_params
    params.require(:lien).permit(:liens)
  end
  def mortgage_params
    params.require(:mortgage).permit(:owner, :dated, :book, :page, :amount)
  end
  def occupancy_params
    params.require(:occupancy).permit(:occupants)
  end
  def prior_policy_params
    params.require(:prior_policy).permit(:pp_exists, :pp_copy)
  end
  def property_use_params
    params.require(:property_use).permit(:property_use_type)
  end
  def tax_params
    params.require(:tax).permit(:paid_through, :amount)
  end
end
