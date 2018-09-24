class CreateContactEmail < ActiveRecord::Migration[5.2]
  def change
    create_table :contact_emails do |t|
      t.string :email
      t.boolean :active, default: true
    end
  end
end
