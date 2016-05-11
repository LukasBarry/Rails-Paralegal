class MortgagesController < ApplicationController
  def show
    @mortgage = Mortgage.new
  end

  def create
    @mortgage = mortgage.create(mortgage_params)
      if @mortgage.save
        redirect_to root_path
      end
  end

  private
  def mortgage_params
    params.require(:mortgage).permit(:owner, :dated, :book, :page, :amount)
  end
end
