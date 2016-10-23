Rails.application.routes.draw do
  root :to => 'home#index'
  mount ShopifyApp::Engine, at: '/'

  namespace :api do
    namespace :v1 do
      resources :shops, only: [:index, :show] do
        resources :products, only: [:index, :show], module: :shops
      end
    end
  end
end
