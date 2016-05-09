class CreateMortgages < ActiveRecord::Migration
  def change
    create_table :mortgages do |t|
      t.string :owner
      t.date :dated
      t.integer :book
      t.integer :page
      t.integer :amount

      t.timestamps null: false
    end
  end
end
