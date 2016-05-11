class MortgagesController < ApplicationController
  def show
    @mortgage = Mortgage.new
  end

  def create
    @mortgage = Mortgage.create(mortgage_params)
      if @mortgage.save
        redirect_to mortgages_path
      end
  end

  def index
    @mortgage = Mortgage.find(params[:id])
  end

  private
  def mortgage_params
    params.require(:mortgage).permit(:owner, :dated, :book, :page, :amount)
  end
end
