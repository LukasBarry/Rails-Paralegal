class AddValueToMortgage < ActiveRecord::Migration
  def change
    add_reference :mortgages, :buyer_id, index: true, foreign_key: true
  end
end
