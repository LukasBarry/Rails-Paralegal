class PriorPoliciesController < ApplicationController
  def show
    @prior = Prior.new
  end

  def create
    @prior = prior.create(prior_policy_params)
      if @prior.save
        redirect_to root_path
      end
  end

  private
  def prior_policy_params
    params.require(:prior_policy).permit(:pp_exists, :pp_copy)
  end
end
