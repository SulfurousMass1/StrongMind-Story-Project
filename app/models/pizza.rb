class Pizza < ApplicationRecord
	# has_and_belongs_to_many :toppings, join_table: 'pizzas_toppings'
	has_many :pizza_toppings
	has_many :toppings, through: :pizza_toppings
end
