class CreateRules < ActiveRecord::Migration[5.2]
  def change
    create_table :rules do |t|
      t.string :code
      t.references :permission, foreign_key: true
      t.boolean :active, default: true
      t.string :description

      t.timestamps
    end
  end
end
