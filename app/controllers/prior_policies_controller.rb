class PriorPoliciesController < ApplicationController
  def show
    @prior = Prior.new
  end

  def create
    @prior = Prior.create(prior_policy_params)
      if @prior.save
        redirect_to prior_policies_path
      end
  end

  def index
    @prior = Prior.find(params[:id])
  end

  private
  def prior_policy_params
    params.require(:prior_policy).permit(:pp_exists, :pp_copy)
  end
end
