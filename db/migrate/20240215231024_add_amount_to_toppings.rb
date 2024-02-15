class AddAmountToToppings < ActiveRecord::Migration[7.1]
  def change
    add_column :toppings, :amount, :string
  end
end
