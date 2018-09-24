class CreateAddress < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.references :addressable, polymorphic: true, index: true
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
