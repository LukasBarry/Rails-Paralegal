class CreateDatabases < ActiveRecord::Migration
  def change
    create_table :databases do |t|
      t.integer :account_number
      t.integer :tax_year
      t.integer :real_estate_id
      t.string :primary_owner
      t.integer :street_number
      t.string :street_name
      t.integer :deed_book
      t.integer :deed_page
      t.integer :building_value
      t.integer :land_value
      t.integer :total_value
      t.integer :total_tax_billed
      t.integer :total_tax_due

      t.timestamps null: false
    end
  end
end
