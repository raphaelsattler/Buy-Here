class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.string :code, limit: 255, null: false, unique: true, index: true
      t.string :name, limit: 255, null: false, unique: true, index: true
      t.text :description
      t.decimal :value, null: false, default: 0, precision: 12, scale: 2
      t.boolean :active, null: false, default: true

      t.timestamps
    end
  end
end
