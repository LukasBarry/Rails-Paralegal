class AddValueToManufacturedHome < ActiveRecord::Migration
  def change
    add_reference :manufactured_homes, :buyer_id, index: true, foreign_key: true
  end
end
