class RemoveAmountFromToppings < ActiveRecord::Migration[7.1]
  def change
    remove_column :toppings, :amount, :string
  end
end
