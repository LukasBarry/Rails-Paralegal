class ManufacturedHomesController < ApplicationController
  def new
    @manufactured = ManufacturedHome.new
  end

  def create
    @manufactured = ManufacturedHome.create(manufactured_home_params)
      if @manufactured.save
        redirect_to @manufactured
      end
  end

  def show
    @manufactured = ManufacturedHome.find(params[:id])
  end

  private
  def manufactured_home_params
    params.require(:manufactured_home).permit(:m_home_exists, :m_home_real_estate, :m_home_affidavit)
  end
end
