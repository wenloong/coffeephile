class AddColumnRoastLevelToCoffeeBean < ActiveRecord::Migration[5.2]
  def change
    add_column :coffee_beans, :roast_level, :integer, default: 1
  end
end
