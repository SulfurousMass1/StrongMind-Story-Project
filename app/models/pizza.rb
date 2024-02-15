class Pizza < ApplicationRecord
	has_and_belongs_to_many :toppings, join_table: 'pizzas_toppings'
end
