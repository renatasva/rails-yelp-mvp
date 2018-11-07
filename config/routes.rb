Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants do
    resources :reviews
  end
end



  # get 'restaurants', to: 'restaurants#index'
  # post 'restaurants', to: 'restaurants#create'
  # get 'restaurants/new', to: 'restaurants#new', as: :new_restaurant
  # get 'restaurants/:id/edit', to: 'restaurants#edit', as: :edit_restaurant
  # get 'restaurants/:id', to: "restaurants#show", as: :restaurant
  # patch 'restaurants/:id', to: 'restaurants#update'
  # delete 'restaurants/:id', to: 'restaurants#destroy'
  # get 'restaurants/:restaurant_id/reviews/new', to: 'reviews#new', as: :new_restaurant_review
  # post 'restaurants/:restaurant_id/reviews', to: 'reviews#create', as: :restaurant_reviews
