class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :name
      t.string :social_name
      t.string :email
      t.string :cpf, limit: 14
      t.string :cnpj, limit: 18
      t.boolean :active, default: true
      t.string :rg
      t.string :expediter_rg
      t.string :uf_expediter_rg, limit: 2

      t.timestamps
    end
  end
end
