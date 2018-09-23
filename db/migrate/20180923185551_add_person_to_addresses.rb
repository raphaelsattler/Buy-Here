class AddPersonToAddresses < ActiveRecord::Migration[5.2]
  def change
    add_reference :addresses, :person, foreign_key: true
  end
end
