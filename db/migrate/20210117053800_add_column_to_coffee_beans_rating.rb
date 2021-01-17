class AddColumnToCoffeeBeansRating < ActiveRecord::Migration[5.2]
  def change
    add_column :coffee_beans, :rating, :integer, default: 0
  end
end
