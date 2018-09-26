class CreateRoleRules < ActiveRecord::Migration[5.2]
  def change
    create_table :role_rules do |t|
      t.references :rule, foreign_key: true
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
