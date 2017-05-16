Rails.application.routes.draw do
  devise_for :users

  # root 'welcome#index'
  root 'products#index'

  resources :products do
    member do
      post :add_to_cart
    end
  end

  namespace :admin do
    resources :products do
      member do
        patch :move_up
        patch :move_down
        patch :move_top
        patch :move_bottom
      end
    end
  end

  resources :carts do
    collection do
      delete :clean
    end
  end

  resources :cart_items
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
