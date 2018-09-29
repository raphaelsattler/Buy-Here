class AddReferencesToQuotes < ActiveRecord::Migration[5.2]
  def change
    add_reference :quotes, :user, foreign_key: true, index: true
    add_reference :quotes, :quote_status, foreign_key: true, index: true
    add_reference :quotes, :quote_type, foreign_key: true, index: true
    add_reference :quotes, :person, foreign_key: true, index: true
  end
end
