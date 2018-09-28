class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.references :saleable, polymorphic: true, index: true
      t.belongs_to :order, index: true
      t.decimal :discount, precision: 5, scale: 2, null: false, default: 0

      t.timestamps
    end
  end
end
