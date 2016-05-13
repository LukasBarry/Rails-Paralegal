class AddUserToBuyers < ActiveRecord::Migration
  def change
    add_reference :buyers, :user, index: true, foreign_key: true
  end
end
