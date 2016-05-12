class AddAmountToLien < ActiveRecord::Migration
  def change
    add_column :liens, :lien_amount, :integer
  end
end
