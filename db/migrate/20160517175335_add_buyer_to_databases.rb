class AddBuyerToDatabases < ActiveRecord::Migration
  def change
    add_reference :databases, :buyer, index: true, foreign_key: true
  end
end
