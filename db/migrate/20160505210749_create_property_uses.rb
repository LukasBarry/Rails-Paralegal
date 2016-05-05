class CreatePropertyUses < ActiveRecord::Migration
  def change
    create_table :property_uses do |t|
      t.string :property_use_type

      t.timestamps null: false
    end
  end
end
