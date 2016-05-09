class CreateEasements < ActiveRecord::Migration
  def change
    create_table :easements do |t|
      t.string :exists
      t.text :effects

      t.timestamps null: false
    end
  end
end
