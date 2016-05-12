class AddValueToConstruction < ActiveRecord::Migration
  def change
    add_reference :constructions, :buyer, index: true, foreign_key: true
  end
end
