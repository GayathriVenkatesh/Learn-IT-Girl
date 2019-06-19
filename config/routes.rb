Rails.application.routes.draw do
  resources :categories
  resources :line_items
  resources :searches
  resources :carts
  resources :products
  devise_for :users, controllers: {
    registrations: 'registrations'
  }
  root 'products#index'
  resources :products do
    resources :likes, only: [:create, :find_product, :already_liked?, :destroy, :find_like]
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
