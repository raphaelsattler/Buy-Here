class CreateQuoteTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :quote_types do |t|
      t.string :name, limit: 255, null: false
      t.string :order, limit: 255, null: false
      t.boolean :active, null: false, default: true

      t.timestamps
    end
  end
end
