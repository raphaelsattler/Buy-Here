class CreateAddress < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :address_type
      t.string :street
      t.integer :number
      t.string :complement
      t.string :zip_code
      t.string :district
      t.string :city
      t.string :state
      t.string :country
      t.boolean :active, default: true
    end
  end
end
