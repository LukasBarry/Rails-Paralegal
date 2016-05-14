class OccupanciesController < ApplicationController
  def new
    @occupancy = Occupancy.new
    @buyer = Buyer.find(params[:buyer_id])
  end

  def create
    @occupancy = Occupancy.create(occupancy_params)
      if @occupancy.save
        redirect_to buyer_occupancy_path(@occupancy.buyer_id, @occupancy.id)
      end
  end

  def show
    @occupancy = Occupancy.find(params[:id])
    @buyer = Buyer.find(params[:buyer_id])
  end

  def edit
    @occupancy = Occupancy.find(params[:id])
    @buyer = Buyer.find(params[:buyer_id])
  end

  def update
    @occupancy = Occupancy.find(params[:id])
    respond_to do |format|
      if @occupancy.update(occupancy_params)
        format.html {redirect_to @occupancy, notice: "Client info has been updated"}
      else
        format.html {render :edit}
      end
    end
  end

  private
  def occupancy_params
    params.require(:occupancy).permit(:occupants, :buyer_id)
  end
end
