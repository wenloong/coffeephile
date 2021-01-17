class AddTwoColumnsToBrew < ActiveRecord::Migration[5.2]
  def change
    add_column :brews, :cream_weight, :float
    add_column :brews, :s_weight, :float
  end
end
