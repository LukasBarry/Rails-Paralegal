class ConstructionsController < ApplicationController
  def new
    @construction = Construction.new
  end

  def create
    @construction = Construction.create(construction_params)
      if @construction.save
        redirect_to @construction
      end
  end

  def show
    @construction = Construction.find(params[:id])
  end

  private
  def construction_params
    params.require(:construction).permit(:construct_complete, :construct_lien_appointed, :construct_lien_name)
  end
end
