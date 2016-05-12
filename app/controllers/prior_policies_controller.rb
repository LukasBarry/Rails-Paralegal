class PriorPoliciesController < ApplicationController
  def new
    @prior = PriorPolicy.new
  end

  def create
    @prior = PriorPolicy.create(prior_policy_params)
      if @prior.save
        redirect_to @prior
      end
  end

  def show
    @prior = PriorPolicy.find(params[:id])
  end

  private
  def prior_policy_params
    params.require(:prior_policy).permit(:pp_exists, :pp_copy)
  end
end
