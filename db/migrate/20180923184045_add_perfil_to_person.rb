class AddPerfilToPerson < ActiveRecord::Migration[5.2]
  def change
    add_reference :people, :perfil, foreign_key: true
  end
end
