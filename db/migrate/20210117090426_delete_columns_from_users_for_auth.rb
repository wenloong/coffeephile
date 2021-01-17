class DeleteColumnsFromUsersForAuth < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :username
    remove_column :users, :password
    remove_column :users, :recent_login_date
  end
end
