class AddReferencesToOrders < ActiveRecord::Migration[5.2]
  def change
    add_reference :orders, :quote, foreign_key: true, index: true
  end
end
