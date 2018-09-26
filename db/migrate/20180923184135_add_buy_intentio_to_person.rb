class AddBuyIntentioToPerson < ActiveRecord::Migration[5.2]
  def change
    add_reference :people, :buy_intention, foreign_key: true
  end
end
