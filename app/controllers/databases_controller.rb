class DatabasesController < ApplicationController
  def index
    @database = Database.order(:street_number, :street_name)
    respond_to do |format|
      format.html
      format.csv { send_data @database.to_csv }
      format.xls # { send_data @database.to_csv(col_sep: "\t") }
    end
  end

  def import
    Database.import(params[:file])
    redirect_to databases_path, notice: "Database pulled from County"
  end
end
