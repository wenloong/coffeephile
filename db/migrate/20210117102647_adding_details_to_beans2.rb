class AddingDetailsToBeans2 < ActiveRecord::Migration[5.2]
  def change
    add_column :coffee_beans, :geography, :string
    add_column :coffee_beans, :flavor, :string
    add_column :coffee_beans, :processing, :string
  end
end
