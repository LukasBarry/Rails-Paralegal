class EasementsController < ApplicationController
  def new
    @easement = Easement.new
  end

  def create
    @easement = Easement.create(easement_params)
      if @easement.save
        redirect_to @easement
      end
  end

  def show
    @easement = Easement.find(params[:id])
  end

  private
  def easement_params
    params.require(:easement).permit(:exists, :effects, :recorded_easement)
  end
end
