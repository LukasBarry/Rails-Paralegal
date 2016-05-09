class CreateLiens < ActiveRecord::Migration
  def change
    create_table :liens do |t|
      t.text :liens

      t.timestamps null: false
    end
  end
end
