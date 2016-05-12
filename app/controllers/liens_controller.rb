class LiensController < ApplicationController
  def new
    @lien = Lien.new
  end

  def create
    @lien = Lien.create(lien_params)
      if @lien.save
        redirect_to @show
      end
  end

  def show
    @lien = Lien.find(params[:id])
  end

  private
  def lien_params
    params.require(:lien).permit(:liens)
  end
end
