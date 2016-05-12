class ManufacturedHomesController < ApplicationController
  def new
    @manufactured = Manufactured_home.new
  end

  def create
    @manufactured = Manufactured_home.create(manufactured_home_params)
      if @manufactured.save
        redirect_to @manufactured
      end
  end

  def show
    @manufactured = Manufactured.find(params[:id])
  end

  private
  def manufactured_home_params
    params.require(:manufactured_home).permit(:m_home_exists, :m_home_real_estate, :m_home_affidavit)
  end
end
