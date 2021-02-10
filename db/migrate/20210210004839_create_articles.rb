class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :post
      t.integer :numLikes
      t.integer :numComments
      t.string :img
      t.string :username

      t.timestamps
    end
  end
end
