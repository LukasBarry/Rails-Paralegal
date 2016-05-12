class OccupanciesController < ApplicationController
  def new
    @occupancy = Occupancy.new
  end

  def create
    @occupancy = Occupancy.create(occupancy_params)
      if @occupancy.save
        redirect_to @occupancy
      end
  end

  def show
    @occupancy = Occupancy.find(params[:id])
  end

  private
  def occupancy_params
    params.require(:occupancy).permit(:occupants)
  end
end
