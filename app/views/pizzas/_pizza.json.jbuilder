json.extract! pizza, :id, :pizza_name, :crust, :toppings, :created_at, :updated_at
json.url pizza_url(pizza, format: :json)
