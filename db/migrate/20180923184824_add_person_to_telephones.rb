class AddPersonToTelephones < ActiveRecord::Migration[5.2]
  def change
    add_reference :telephones, :person, foreign_key: true
  end
end
