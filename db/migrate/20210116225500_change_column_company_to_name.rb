class ChangeColumnCompanyToName < ActiveRecord::Migration[5.2]
  def change
    rename_column :coffee_beans, :company, :name
  end
end
