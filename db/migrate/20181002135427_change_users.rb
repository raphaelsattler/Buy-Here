class ChangeUsers < ActiveRecord::Migration[5.2]
  def change
  	rename_column :users, :reset_password_sent_at, :reset_digest
  	rename_column :users, :token_recovery_expire_at, :reset_sent_at 
  end
end
