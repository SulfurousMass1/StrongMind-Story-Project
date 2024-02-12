class CreateToppings < ActiveRecord::Migration[7.1]
  def change
    create_table :toppings do |t|
      t.string :topping
      t.string :stock

      t.timestamps
    end
  end
end
