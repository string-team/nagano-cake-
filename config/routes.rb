Rails.application.routes.draw do

  
  
  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions"
  }
  
  root :to => "customer/homes#top"
  get "/about" => "customer/homes#about"

  get "/customers/my_page" => "customer/customers#show"
  get "/customers/edit" => "customer/customers#edit"
  patch "/customers" => "customer/customers#update"
  get "/customers/unsubscribe" => "customer/customers#unsubscribe"
  patch "/customers/withdraw" => "customer/customers#withdraw"
  
  delete "/cart_items/destroy_all" => "customer/cart_items#destroy_all"
  post "/orders/confirm" => "customer/orders#confirm"
  get "/orders/complete" => "customer/orders#complete"

  scope module: :customer do
    resources :items, only: [:index, :show]
    resources :cart_items, only: [:index, :update, :destroy, :create]
    resources :orders, only: [:index, :show, :new, :create]
    resources :addresses, only: [:index, :edit, :create, :update, :destroy]
  end
  devise_for :customers,skip: [:passwords,], controllers: {
    registrations: "customer/registrations",
    sessions: 'customer/sessions'
  }

  get "/admin" => "admin/homes#top"

  namespace :admin do
    resources :customers, only: [:index, :show, :edit, :update]
    resources :items, except: [:destroy]
    resources :genres, only: [:index, :create, :edit, :update]
    resources :orders, only: [:show, :update]
    resources :order_details, only: [:update]
  end

end