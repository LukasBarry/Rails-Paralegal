class AddValueToEasement < ActiveRecord::Migration
  def change
    add_reference :easements, :buyer_id, index: true, foreign_key: true
  end
end
