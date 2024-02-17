class RenameToppingToToppingNameInToppings < ActiveRecord::Migration[7.1]
  def change
    rename_column :toppings, :topping, :topping_name
  end
end
