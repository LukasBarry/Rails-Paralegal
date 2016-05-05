class CreateOccupancies < ActiveRecord::Migration
  def change
    create_table :occupancies do |t|
      t.string :occupants

      t.timestamps null: false
    end
  end
end
