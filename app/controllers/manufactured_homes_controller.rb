class ManufacturedHomesController < ApplicationController
  def new
    @manufactured = ManufacturedHome.new
    @buyer = Buyer.find(params[:buyer_id])
  end

  def create
    @manufactured = ManufacturedHome.create(manufactured_home_params)
      if @manufactured.save
        redirect_to buyer_manufactured_home_path(@manufactured.buyer_id, @manufactured.id)
      end
  end

  def show
    @manufactured = ManufacturedHome.find(params[:id])
    @buyer = Buyer.find(params[:buyer_id])
  end

  def edit
    @manufactured = ManufacturedHome.find(params[:id])
    @buyer = Buyer.find(params[:buyer_id])
  end

  def update
    @manufactured = ManufacturedHome.find(params[:id])
    respond_to do |format|
      if @manufactured.update(manufactured_home_params)
        format.html {redirect_to buyer_manufactured_home_path(@manufactured.buyer_id, @manufactured), notice: "Mobile Home info has been updated"}
      else
        format.html {render :edit}
      end
    end
  end

  private
  def manufactured_home_params
    params.require(:manufactured_home).permit(:m_home_exists, :m_home_real_estate, :m_home_affidavit, :buyer_id)
  end
end
