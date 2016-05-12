class AddValueToManufacturedHome < ActiveRecord::Migration
  def change
    add_reference :manufactured_homes, :buyer, index: true, foreign_key: true
  end
end
