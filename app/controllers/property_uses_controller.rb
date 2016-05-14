class PropertyUsesController < ApplicationController
  def new
    @property = PropertyUse.new
    @buyer = Buyer.find(params[:buyer_id])
  end

  def create
    @property = PropertyUse.create(property_use_params)
      if @property.save
        redirect_to buyer_property_use_path(@property.buyer_id, @property.id)
      end
  end

  def show
    @property = PropertyUse.find(params[:id])
    @buyer = Buyer.find(params[:buyer_id])
  end

  def edit
    @property = PropertyUse.find(params[:id])
    @buyer = Buyer.find(params[:buyer_id])
  end

  def update
    @property = PropertyUse.find(params[:id])
    respond_to do |format|
      if @property.update(property_params)
        format.html {redirect_to @property, notice: "Property use info has been updated"}
      else
        format.html {render :edit}
      end
    end
  end

  private
  def property_use_params
    params.require(:property_use).permit(:property_use_type, :buyer_id)
  end
end
