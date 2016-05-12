class AddValueToPropertyUse < ActiveRecord::Migration
  def change
    add_reference :property_uses, :buyer, index: true, foreign_key: true
  end
end
