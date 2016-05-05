class CreateConstructions < ActiveRecord::Migration
  def change
    create_table :constructions do |t|
      t.string :construct_complete
      t.string :construct_lien_appointed
      t.string :construct_lien_name

      t.timestamps null: false
    end
  end
end
