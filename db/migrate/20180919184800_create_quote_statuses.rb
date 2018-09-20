class CreateQuoteStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :quote_statuses do |t|
      t.string :name, limit: 255, null: false, unique: true
      t.string :order, limit: 255, null: false
      t.boolean :active, null: false, default: true

      t.timestamps
    end
  end
end
