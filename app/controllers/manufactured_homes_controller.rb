class ManufacturedHomesController < ApplicationController
  def show
    @manufactured = Manufactured_home.new
  end

  def create
    @manufactured = Manufactured_home.create(manufactured_home_params)
      if @manufactured.save
        redirect_to manufactured_homes_path
      end
  end

  def index
    @manufactured = Manufactured.find(params[:id])
  end

  private
  def manufactured_home_params
    params.require(:manufactured_home).permit(:m_home_exists, :m_home_real_estate, :m_home_affidavit)
  end
end
