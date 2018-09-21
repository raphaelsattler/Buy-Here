class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :code, limit: 255, null: false, unique: true, index: true
      t.string :name, limit: 255, null: false, unique: true, index: true
      t.text :description
      t.boolean :active, null: false, default: true
      t.decimal :value, null: false, default: 0, precision: 12, scale: 2

      t.timestamps
    end
  end
end
