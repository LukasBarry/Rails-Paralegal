class AddValueToOccupancy < ActiveRecord::Migration
  def change
    add_reference :occupancies, :buyer, index: true, foreign_key: true
  end
end
