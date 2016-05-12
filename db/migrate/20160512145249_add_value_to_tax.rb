class AddValueToTax < ActiveRecord::Migration
  def change
    add_reference :taxes, :buyer_id, index: true, foreign_key: true
  end
end
