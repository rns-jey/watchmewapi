class AddConfirmableToUsers < ActiveRecord::Migration[6.1]
  def change
    add_index :users, :confirmation_token, unique: true

    execute("UPDATE users SET confirmed_at = date('now')")
  end
end
