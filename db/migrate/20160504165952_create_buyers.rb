class CreateBuyers < ActiveRecord::Migration
  def change
    create_table :buyers do |t|
      t.string :current_owner
      t.string :borrower
      t.string :property_address
      t.string :county
      t.integer :purchase_price
      t.integer :owners_coverage
      t.string :lender_name
      t.string :type_of_loan
      t.integer :loan_number
      t.integer :loan_amount
      t.string :type_of_policy
      t.string :icl_requested
      t.string :alta_endorsement

      t.timestamps null: false
    end
  end
end
