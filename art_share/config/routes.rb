Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :users, only: [:create, :destroy, :index, :show, :update]

  get "/artworks", to: 'artworks#index', as: 'all_artworks'
  post "/artworks", to: 'artworks#create', as: 'new_artworks'
  get "/artworks/:slug", to: 'artworks#show', as: 'specific_art'
  patch "/artworks/:slug", to: 'artworks#update'
  put "/artworks/:slug", to: 'artworks#update'
  delete "/artworks/:slug", to: 'artworks#destroy'



  resources :artwork_shares, only: [:create, :destroy]





  
end
