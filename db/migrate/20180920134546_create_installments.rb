class CreateInstallments < ActiveRecord::Migration[5.2]
  def change
    create_table :installments do |t|
      t.decimal :off, precision: 4, scale: 2, default: 0
      t.decimal :value, precision: 12, scale: 2 , null: false
      t.decimal :total_value, precision: 12, scale: 2, null: false
      t.date :due_date, null: false
      t.date :payment_date, null: false

      t.timestamps
    end
  end
end
