Rails.application.routes.draw do
  resources :book_items
  resources :book_genres
  resources :books
  resources :genres
  resources :genre_categories
  resources :libraries
  resources :authors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
