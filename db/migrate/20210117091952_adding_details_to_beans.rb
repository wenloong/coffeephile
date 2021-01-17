class AddingDetailsToBeans < ActiveRecord::Migration[5.2]
  def change
    add_column :coffee_beans, :extra_details, :string
  end
end
