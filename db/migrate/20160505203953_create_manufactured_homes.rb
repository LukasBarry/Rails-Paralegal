class CreateManufacturedHomes < ActiveRecord::Migration
  def change
    create_table :manufactured_homes do |t|
      t.string :m_home_exists
      t.string :m_home_real_estate

      t.timestamps null: false
    end
  end
end
