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

  def edit
    @prior = PriorPolicy.find(params[:id])
  end

  def update
    @prior = Prior.find(params[:id])
    respond_to do |format|
      if @prior.update(prior_params)
        format.html {redirect_to @prior, notice: "Prior Policy info has been updated"}
      else
        format.html {render :edit}
      end
    end
  end

  private
  def prior_policy_params
    params.require(:prior_policy).permit(:pp_exists, :pp_copy)
  end
end
