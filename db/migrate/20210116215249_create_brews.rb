class CreateBrews < ActiveRecord::Migration[5.2]
  def change
    create_table :brews do |t|
      t.string :brew_method
      t.float :c_weight
      t.float :w_weight
      t.string :extra_details
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
