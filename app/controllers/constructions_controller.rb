class ConstructionsController < ApplicationController
  def show
    @construction = Construction.new
  end

  def create
    @construction = construction.create(construction_params)
      if @construction.save
        redirect_to root_path
      end
  end

  private
  def construction_params
    params.require(:construction).permit(:construct_complete, :construct_lien_appointed, :construct_lien_name)
  end
end
