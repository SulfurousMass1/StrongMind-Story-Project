Rails.application.routes.draw do
  resources :toppings
  resources :pizzas
  get 'home/pizzas'
  get 'home/toppings'
  #root 'home#index'
  root to: redirect('/pizzas')
end
