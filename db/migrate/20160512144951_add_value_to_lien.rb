class AddValueToLien < ActiveRecord::Migration
  def change
    add_reference :liens, :buyer, index: true, foreign_key: true
  end
end
