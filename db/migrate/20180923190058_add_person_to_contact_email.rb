class AddPersonToContactEmail < ActiveRecord::Migration[5.2]
  def change
    add_reference :contact_emails, :person, foreign_key: true
  end
end
