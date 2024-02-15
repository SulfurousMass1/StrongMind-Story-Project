class Topping < ApplicationRecord
	# has_and_belongs_to_many :pizzas, join_table: 'pizzas_toppings'
	has_many :pizza_toppings
	has_many :pizzas, through: :pizza_toppings
end
