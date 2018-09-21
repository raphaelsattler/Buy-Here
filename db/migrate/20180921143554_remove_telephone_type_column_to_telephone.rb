class RemoveTelephoneTypeColumnToTelephone < ActiveRecord::Migration[5.2]
  def change
    remove_column :telephones, :telephone_type
  end
end
