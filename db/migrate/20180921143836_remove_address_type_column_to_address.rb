class RemoveAddressTypeColumnToAddress < ActiveRecord::Migration[5.2]
  def change
    remove_column :addresses, :address_type
  end
end
