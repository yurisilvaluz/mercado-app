Rails.application.routes.draw do
  root "mercado#index"
  resources :compras
  resources :produtos
  resources :clientes
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
