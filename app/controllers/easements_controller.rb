class EasementsController < ApplicationController
  def show
    @easement = Easement.new
  end

  def create
    @easement = easement.create(easement_params)
      if @easement.save
        redirect_to root_path
      end
  end

  private
  def easement_params
    params.require(:easement).permit(:exists, :effects, :recorded_easement)
  end
end
