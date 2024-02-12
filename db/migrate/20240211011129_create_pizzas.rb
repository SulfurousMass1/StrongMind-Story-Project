class CreatePizzas < ActiveRecord::Migration[7.1]
  def change
    create_table :pizzas do |t|
      t.string :pizza_name
      t.string :crust
      t.string :toppings

      t.timestamps
    end
  end
end
