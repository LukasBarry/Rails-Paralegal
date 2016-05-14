class EasementsController < ApplicationController
  def new
    @easement = Easement.new
    @buyer = Buyer.find(params[:buyer_id])
  end

  def create
    @easement = Easement.create(easement_params)
      if @easement.save
        redirect_to buyer_easement_path(@easement.buyer_id, @easement.id)
      end
  end

  def show
    @easement = Easement.find(params[:id])
    @buyer = Buyer.find(params[:buyer_id])
  end

  def edit
    @easement = Easement.find(params[:id])
    @buyer = Buyer.find(params[:buyer_id])
  end

  def update
    @easement = Easement.find(params[:id])
    respond_to do |format|
      if @easement.update(easement_params)
        format.html {redirect_to @easement, notice: "Easement info has been updated"}
      else
        format.html {render :edit}
      end
    end
  end

  private
  def easement_params
    params.require(:easement).permit(:exists, :effects, :recorded_easement, :buyer_id)
  end
end
