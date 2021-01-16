class CreateCoffeeBeans < ActiveRecord::Migration[5.2]
  def change
    create_table :coffee_beans do |t|
      t.string :type
      t.string :brand
      t.string :company

      t.timestamps
    end
  end
end
