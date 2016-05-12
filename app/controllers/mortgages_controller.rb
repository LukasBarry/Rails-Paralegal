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

  def edit
    @mortgage = Mortgage.find(params[:id])
  end

  def update
    @mortgage = Mortgage.find(params[:id])
    respond_to do |format|
      if @mortgage.update(mortgage_params)
        format.html {redirect_to @mortgage, notice: "Mortgage info has been updated"}
      else
        format.html {render :edit}
      end
    end
  end

  private
  def mortgage_params
    params.require(:mortgage).permit(:owner, :dated, :book, :page, :amount)
  end
end
