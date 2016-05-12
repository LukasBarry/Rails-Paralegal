class TaxesController < ApplicationController
  def new
    @tax = Tax.new
  end

  def create
    @tax = Tax.create(tax_params)
      if @tax.save
        redirect_to @tax
      end
  end

  def show
    @tax = Tax.find(params[:id])
  end

  private
  def tax_params
    params.require(:tax).permit(:paid_through, :amount)
  end
end
