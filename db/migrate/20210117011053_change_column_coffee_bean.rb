class ChangeColumnCoffeeBean < ActiveRecord::Migration[5.2]
  def change
    rename_column :coffee_beans, :type, :bean_type
  end
end
