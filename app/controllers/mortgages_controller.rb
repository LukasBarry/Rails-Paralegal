class MortgagesController < ApplicationController
  def new
    @mortgage = Mortgage.new
  end

  def create
    @mortgage = Mortgage.create(mortgage_params)
      if @mortgage.save
        redirect_to @mortgage
      end
  end

  def show
    @mortgage = Mortgage.find(params[:id])
  end

  private
  def mortgage_params
    params.require(:mortgage).permit(:owner, :dated, :book, :page, :amount)
  end
end
