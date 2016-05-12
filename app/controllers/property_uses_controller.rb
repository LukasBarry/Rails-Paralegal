class PropertyUsesController < ApplicationController
  def new
    @property = Property.new
  end

  def create
    @property = Property.create(property_use_params)
      if @property.save
        redirect_to @property
      end
  end

  def show
    @property = Property.find(params[:id])
  end

  private
  def property_use_params
    params.require(:property_use).permit(:property_use_type)
  end
end
