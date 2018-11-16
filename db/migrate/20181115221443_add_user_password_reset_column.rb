class AddUserPasswordResetColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :password_reset, :boolean, default: false
  end
end
