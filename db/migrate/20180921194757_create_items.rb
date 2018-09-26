class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.references :saleable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
