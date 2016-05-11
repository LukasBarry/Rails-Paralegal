class LiensController < ApplicationController
  def show
    @lien = Lien.new
  end

  def create
    @lien = lien.create(lien_params)
      if @lien.save
        redirect_to root_path
      end
  end

  private
  def lien_params
    params.require(:lien).permit(:liens)
  end
end
