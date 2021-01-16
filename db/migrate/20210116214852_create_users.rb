class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :f_name
      t.string :l_name
      t.string :username
      t.string :password
      t.datetime :recent_login_date
      t.integer :streak

      t.timestamps
    end
  end
end
