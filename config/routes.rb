# rubocop:disable Style/StringLiterals
Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "pets", to: "pets#index"
  get "pets/new", to: "pets#new"
  get "pets/:id", to: "pets#show", as: "pet"
  post "pets", to: "pets#create"
  delete "pets/:id", to: "pets#destroy"
end
