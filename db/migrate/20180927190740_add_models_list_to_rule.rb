class AddModelsListToRule < ActiveRecord::Migration[5.2]
  def change
    add_reference :rules, :models_list, foreign_key: true
  end
end
