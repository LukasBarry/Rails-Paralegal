class PropertyUsesController < ApplicationController
  def new
    @property = PropertyUse.new
  end

  def create
    @property = PropertyUse.create(property_use_params)
      if @property.save
        redirect_to @property
      end
  end

  def show
    @property = PropertyUse.find(params[:id])
  end

  private
  def property_use_params
    params.require(:property_use).permit(:property_use_type)
  end
end
