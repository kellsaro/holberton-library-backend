Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :authors
      resources :book_items
      resources :book_genres
      resources :books
      resources :categories
      resources :genres
      resources :libraries
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
