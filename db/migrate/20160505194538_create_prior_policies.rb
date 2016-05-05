class CreatePriorPolicies < ActiveRecord::Migration
  def change
    create_table :prior_policies do |t|
      t.string :pp_exists

      t.timestamps null: false
    end
  end
end
