class LiensController < ApplicationController
  def new
    @lien = Lien.new
  end

  def create
    @lien = Lien.create(lien_params)
      if @lien.save
        redirect_to @lien
      end
  end

  def show
    @lien = Lien.find(params[:id])
  end

  def edit
    @lien = Lien.find(params[:id])
  end

  def update
    @lien = Lien.find(params[:id])
    respond_to do |format|
      if @lien.update(lien_params)
        format.html {redirect_to @lien, notice: "Lien info has been updated"}
      else
        format.html {render :edit}
      end
    end
  end

  private
  def lien_params
    params.require(:lien).permit(:liens)
  end
end
