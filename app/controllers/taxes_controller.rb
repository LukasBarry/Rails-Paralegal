class TaxesController < ApplicationController
  def show
    @tax = Tax.new
  end

  def create
    @tax = tax.create(tax_params)
      if @tax.save
        redirect_to root_path
      end
  end

  private
  def tax_params
    params.require(:tax).permit(:paid_through, :amount)
  end
end
