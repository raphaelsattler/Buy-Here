class AddTelephoneTypeToTelephone < ActiveRecord::Migration[5.2]
  def change
    add_reference :telephones, :telephoneable, polymorphic: true, index: true
  end
end
