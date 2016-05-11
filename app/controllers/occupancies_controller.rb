class OccupanciesController < ApplicationController
  def show
    @occupancy = Occupancy.new
  end

  def create
    @occupancy = Occupancy.create(occupancy_params)
      if @occupancy.save
        redirect_to occupancies_path
      end
  end

  def index
    @occupancy = Occupancy.find(params[:id])
  end

  private
  def occupancy_params
    params.require(:occupancy).permit(:occupants)
  end
end
