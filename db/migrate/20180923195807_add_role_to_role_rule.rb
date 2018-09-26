class AddRoleToRoleRule < ActiveRecord::Migration[5.2]
  def change
    add_reference :role_rules, :role, foreign_key: true
  end
end
