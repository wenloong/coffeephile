class ChangeColumnBeanTypeToRoast < ActiveRecord::Migration[5.2]
  def change
    remove_column :coffee_beans, :bean_type
  end
end
