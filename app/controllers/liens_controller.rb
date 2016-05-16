class LiensController < ApplicationController
  def new
    @lien = Lien.new
    @buyer = Buyer.find(params[:buyer_id])
  end

  def create
    @lien = Lien.create(lien_params)
      if @lien.save
        redirect_to buyer_lien_path(@lien.buyer_id, @lien.id)
      end
  end

  def show
    @lien = Lien.find(params[:id])
    @buyer = Buyer.find(params[:buyer_id])
  end

  def edit
    @lien = Lien.find(params[:id])
    @buyer = Buyer.find(params[:buyer_id])
  end

  def update
    @lien = Lien.find(params[:id])
    respond_to do |format|
      if @lien.update(lien_params)
        format.html {redirect_to buyer_lien_path(@lien.buyer_id, @lien), notice: "Lien info has been updated"}
      else
        format.html {render :edit}
      end
    end
  end

  private
  def lien_params
    params.require(:lien).permit(:liens, :buyer_id)
  end
end
