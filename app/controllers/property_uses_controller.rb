class PropertyUsesController < ApplicationController
  def show
    @property = Property.new
  end

  def create
    @property = property.create(property_use_params)
      if @property.save
        redirect_to root_path
      end
  end

  private
  def property_use_params
    params.require(:property_use).permit(:property_use_type)
  end
end
