Rails.application.routes.draw do
  resources :restaurants do
    # /restaurants
    collection do
      get :top # get 'top', to: "restaurants#top", as: :top restaurants
    end
    member do
      get :chef # get '/restaurants/:id/chef'
    end
    #/restaurants/:restaurant_id/reviews/new
    #/restaurants/:restaurant_id/reviews
    resources :reviews, only: [ :new, :create ]
  end
  resources :reviews, only: [ :destroy ]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
