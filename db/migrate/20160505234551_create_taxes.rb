class CreateTaxes < ActiveRecord::Migration
  def change
    create_table :taxes do |t|
      t.integer :paid_through
      t.integer :amount

      t.timestamps null: false
    end
  end
end
