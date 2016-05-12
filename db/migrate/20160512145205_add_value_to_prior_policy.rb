class AddValueToPriorPolicy < ActiveRecord::Migration
  def change
    add_reference :prior_policies, :buyer, index: true, foreign_key: true
  end
end
