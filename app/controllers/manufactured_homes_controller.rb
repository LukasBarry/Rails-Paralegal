class ManufacturedHomesController < ApplicationController
  def show
    @manufactured = Manufactured.new
  end

  def create
    @manufactured = manufactured.create(manufactured_home_params)
      if @manufactured.save
        redirect_to root_path
      end
  end

  private
  def manufactured_home_params
    params.require(:manufactured_home).permit(:m_home_exists, :m_home_real_estate, :m_home_affidavit)
  end
end
