class CreateMembership < ActiveRecord::Migration[5.2]
  def change
    create_table :memberships do |t|
      t.references :group, foreign_key: true
      t.boolean :active, default: true
    end
  end
end
