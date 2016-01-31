Rails.application.routes.draw do
  
  resources :line_items do
    match :qty, action: :qty, via: [:post, :delete], on: :member #-> url.com/line_items/qty
  end

  resources :carts
  get 'store/index'
  resources :products

  root 'store#index', as: 'store'
end
