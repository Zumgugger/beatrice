class RemoveThingsFromUsers < ActiveRecord::Migration[5.0]
  def change
      remove_column :users, :encrypted_password
      remove_column :users, :salt
      remove_column :users, :activation_digest
      remove_column :users, :activated
      remove_column :users, :activated_at
  end
end
