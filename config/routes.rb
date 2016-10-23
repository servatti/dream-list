Rails.application.routes.draw do
  root :to => 'home#index'
  mount ShopifyApp::Engine, at: '/'

  namespace :api do
    namespace :v1 do
      resources :shops, only: [:index, :show] do
        resources :products, only: [:index, :show], module: :shops
      end
      resources :products, only: [:index] do
        resources :wishes, only: [:create], module: :products
        delete '/wishes', to: 'products/wishes#destroy'
      end
      resources :users, only: [:show]
      resources :wishlist, only: [:index]
      post '/login', to: 'users#create'
    end
  end
end
