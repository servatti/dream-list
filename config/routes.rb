Rails.application.routes.draw do
  root :to => 'home#index'
  mount ShopifyApp::Engine, at: '/'

  namespace :api do
    namespace :v1 do
      resources :shops, only: [:index, :show]
    end
  end
end
