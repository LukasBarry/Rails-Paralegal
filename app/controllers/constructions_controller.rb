class ConstructionsController < ApplicationController
  def new
    @construction = Construction.new
  end

  def create
    @construction = Construction.create(construction_params)
      if @construction.save
        redirect_to @construction
      end
  end

  def show
    @construction = Construction.find(params[:id])
  end

  def edit
    @construction = Construction.find(params[:id])
  end

  def update
    @construction = Construction.find(params[:id])
    respond_to do |format|
      if @construction.update(construction_params)
        format.html {redirect_to @construction, notice: "Construction info has been updated"}
      else
        format.html {render :edit}
      end
    end
  end

  private
  def construction_params
    params.require(:construction).permit(:construct_complete, :construct_lien_appointed, :construct_lien_name)
  end
end
