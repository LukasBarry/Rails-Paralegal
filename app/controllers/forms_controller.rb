class FormsController < ApplicationController
  def show_buyers
    @buyer = Buyer.new
  end

  def create_buyers
    @buyer = Buyer.create(buyer_params)
      if @buyer.save
        redirect_to root_path
      end
  end

  def show_constructions
    @construction = Construction.new
  end

  def create_constructions
    @construction = construction.create(construction_params)
      if @construction.save
        redirect_to root_path
      end
  end

  def show_easements
    @easement = Easement.new
  end

  def create_easements
    @easement = easement.create(easement_params)
      if @easement.save
        redirect_to root_path
      end
  end

  def show_liens
    @lien = Lien.new
  end

  def create_liens
    @lien = lien.create(lien_params)
      if @lien.save
        redirect_to root_path
      end
  end

  def show_manufactured
    @manufactured = Manufactured.new
  end

  def create_manufactured
    @manufactured = manufactured.create(manufactured_home_params)
      if @manufactured.save
        redirect_to root_path
      end
  end

  def show_mortgages
    @mortgage = Mortgage.new
  end

  def create_mortgages
    @mortgage = mortgage.create(mortgage_params)
      if @mortgage.save
        redirect_to root_path
      end
  end

  def show_occupancies
    @occupancy = Occupancy.new
  end

  def create_occupancies
    @occupancy = occupancy.create(occupancy_params)
      if @occupancy.save
        redirect_to root_path
      end
  end

  def show_prior
    @prior = Prior.new
  end

  def create_prior
    @prior = prior.create(prior_policy_params)
      if @prior.save
        redirect_to root_path
      end
  end

  def show_property
    @property = Property.new
  end

  def create_property
    @property = property.create(property_use_params)
      if @property.save
        redirect_to root_path
      end
  end

  def show_taxes
    @tax = Tax.new
  end

  def create_taxes
    @tax = tax.create(tax_params)
      if @tax.save
        redirect_to root_path
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
