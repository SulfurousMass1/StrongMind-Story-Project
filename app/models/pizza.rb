class Pizza < ApplicationRecord
	validates :pizza_name, uniqueness: true
	validate :unique_crust_and_toppings_combination

	# has_and_belongs_to_many :toppings, join_table: 'pizzas_toppings'
	has_many :pizza_toppings, dependent: :destroy
	has_many :toppings, through: :pizza_toppings

	private

	def unique_crust_and_toppings_combination
		# Rails.logger.debug "Validating unique crust and toppings combination"
		
		# Creates an array of all the current toppings of the pizza being created/updated. Necessary for comparing similar pizzas
		# because the current pizza cannot use .pluck(:topping) since the validation occurs before it is saved in the database
		current_toppings = toppings.map(&:topping).sort

		# Find pizzas with the same crust
		similar_pizzas = Pizza.where(crust: crust)

		# Excludes the current pizza from the query if it already exists. More so for updating an existing pizza than creating a new one
		similar_pizzas = similar_pizzas.where.not(id: id) if persisted?

		similar_pizzas.each do |pizza|
			Rails.logger.debug "--------------------------START OF LOOP----------------------------"
			Rails.logger.debug "CURRENT PIZZA TOPPINGS: #{current_toppings}"
			Rails.logger.debug "SIMILAR PIZZA: #{pizza.toppings.pluck(:topping).sort}"
			
			# Compares toppings between the current pizza (toppings.pluck(:id).sort) and similar pizzas (pizza.toppings.pluck(:id).sort)
			# Sorting ensures that the IDs are more accurately compared
			if pizza.toppings.pluck(:topping).sort == current_toppings
				errors.add(:base, "A pizza with the same crust and toppings you specified already exists")
				Rails.logger.debug "-------------------------BREAK-------------------------------"
				break
			end
		end
	end
end
