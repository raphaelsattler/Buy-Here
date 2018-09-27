class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.references :item, foreign_key: true, index: true
      t.decimal :off, precision: 5, scale: 2, default: 0, null: false

      t.timestamps
    end
  end
end
