class CreatePermissions < ActiveRecord::Migration[5.2]
  def change
    create_table :permissions do |t|
      t.string :code
      t.string :name
      t.boolean :active, default: true
      t.text :description

      t.timestamps
    end
  end
end
