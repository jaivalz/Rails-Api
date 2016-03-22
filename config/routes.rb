Rails.application.routes.draw do
  resources :orders, only: [ :index ] #/orders

  resources :tables, except: [:new, :edit] do
    resources :orders, only: [ :create ] do  #/tables/:id/orders
      post :add, on: :member
    end
  end
end