class DatabasesController < ApplicationController
  def new
    @buyer = Buyer.find(params[:buyer_id])
    @database = Database.new
  end
  def show
    @buyer = Buyer.find(params[:buyer_id])
    @database = Database.find(params[:id])
  end
  def create
    @database = Database.new(database_params)
    respond_to do |format|
      if @database.save
          format.html {redirect_to buyer_path(@database.buyer_id), notice: "Client info has been updated"}
        else
          format.html {render :new}
        end
      end
  end

  private
  def database_params
    params.require(:database).permit(:account_number, :tax_year, :real_estate_num, :primary_owner, :street_number, :street_name, :deed_book, :deed_page, :building_value, :land_value, :total_value, :total_tax_billed, :total_tax_due, :buyer_id)
  end
end
