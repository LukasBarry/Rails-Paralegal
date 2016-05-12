class AddValueToTax < ActiveRecord::Migration
  def change
    add_reference :taxes, :buyer, index: true, foreign_key: true
  end
end
