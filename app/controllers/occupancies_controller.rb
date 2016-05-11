class OccupanciesController < ApplicationController
  def show
    @occupancy = Occupancy.new
  end

  def create
    @occupancy = occupancy.create(occupancy_params)
      if @occupancy.save
        redirect_to root_path
      end
  end

  private
  def occupancy_params
    params.require(:occupancy).permit(:occupants)
  end
end
