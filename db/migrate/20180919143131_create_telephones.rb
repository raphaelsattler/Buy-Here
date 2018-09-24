class CreateTelephones < ActiveRecord::Migration[5.2]
  def change
    create_table :telephones do |t|
      t.references :telephoneable, polymorphic: true, index: true
      t.string :ddi_number, limit: 3
      t.string :ddd_number, limit: 2
      t.string :telephone_number, limit: 10
      t.boolean :active, default: true
    end
  end
end
