class AddValueToEasement < ActiveRecord::Migration
  def change
    add_reference :easements, :buyer, index: true, foreign_key: true
  end
end
