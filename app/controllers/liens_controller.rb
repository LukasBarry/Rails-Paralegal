class LiensController < ApplicationController
  def show
    @lien = Lien.new
  end

  def create
    @lien = Lien.create(lien_params)
      if @lien.save
        redirect_to liens_path
      end
  end

  def index
    @lien = Lien.find(params[:id])
  end

  private
  def lien_params
    params.require(:lien).permit(:liens)
  end
end
