class CreatePaymentMethods < ActiveRecord::Migration[5.2]
  def change
    create_table :payment_methods do |t|
      t.string :name, limit: 255, null: false, default: "", unique: true
      t.boolean :due, null: false, default: false
      t.boolean :active, null: false, default: true
      t.decimal :rate, null: false, default: 0

      t.timestamps
    end
  end
end
