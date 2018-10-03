class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      t.string :code, limit: 255, null: false, default:"", unique: true, index: true
      t.decimal :request_value, null: false, precision: 12, scale: 2, default: 0 
      t.decimal :discount, null: false, default: 0, precision: 5, scale: 2
      t.decimal :total_value, null: false, default: 0, precision: 12, scale: 2 

      t.timestamps
    end
  end
end
