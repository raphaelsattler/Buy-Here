class CreateGroup < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :name
      t.bigint :parent_group_id
      t.boolean :active, default: true

      t.timestamps
    end
    add_foreign_key :groups, :groups, column: :parent_group_id, primary_key: :id, index: true
  end
end
