class ProfilesController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  private
  def user_params
    params.require(:user).permit(:email, :firm_name, :attorney_name, :phone_number, :fax_number, :address)
  end
end
