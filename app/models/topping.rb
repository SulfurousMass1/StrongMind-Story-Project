class Topping < ApplicationRecord
	has_and_belongs_to_many :pizzas, join_table: 'pizzas_toppings'
end
