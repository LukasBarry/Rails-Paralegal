class AddValueToConstruction < ActiveRecord::Migration
  def change
    add_reference :constructions, :buyer_id, index: true, foreign_key: true
  end
end
