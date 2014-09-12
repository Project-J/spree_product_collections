Spree::Core::Engine.routes.draw do
  namespace :api, defaults: { format: 'json' } do
    resources :product_collections
  end
end
