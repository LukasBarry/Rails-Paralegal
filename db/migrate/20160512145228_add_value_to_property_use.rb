class AddValueToPropertyUse < ActiveRecord::Migration
  def change
    add_reference :property_uses, :buyer_id, index: true, foreign_key: true
  end
end
