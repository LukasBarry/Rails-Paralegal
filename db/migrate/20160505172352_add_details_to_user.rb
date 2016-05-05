class AddDetailsToUser < ActiveRecord::Migration
  def change
    add_column :users, :firm_name, :string
    add_column :users, :attorney_name, :string
    add_column :users, :phone_number, :integer
    add_column :users, :fax_number, :integer
    add_column :users, :address, :text
  end
end
