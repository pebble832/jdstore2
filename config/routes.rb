Rails.application.routes.draw do
  devise_for :users

  root 'welcome#index'
  # root 'products#index'

  resources :products do
    member do
      post :add_to_cart
    end
  end

  namespace :admin do
    resources :orders do
      member do
        post :cancel
        post :ship
        post :shipped
        post :return
      end
    end
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
      post   :checkout
    end
  end

  resources :cart_items

  resources :orders do
    member do
      post :pay_with_alipay
      post :pay_with_wechat
      post :apply_to_cancel
    end
  end

  namespace :account do
    resources :orders
  end

  resources :fittings

  namespace :admin do
    resources :fittings
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
