class CreateModelsLists < ActiveRecord::Migration[5.2]
  def change
    create_table :models_lists do |t|
      t.string :code
      t.boolean :active, default: true
      t.string :name_of_model

      t.timestamps
    end
  end
end
