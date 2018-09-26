class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.references :role, foreign_key: true
      t.string :username
      t.string :email
      t.boolean :active, default: true
      t.string :password_digest
      t.string :reset_password_sent_at
      t.datetime :token_recovery_expire_at

      t.timestamps
    end
  end
end
