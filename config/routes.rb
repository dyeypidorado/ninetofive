Ninetofive::Application.routes.draw do
  devise_for :admins

  namespace :admin do
    resources :products do
      resources :subscribers
    end
  end

  resources :products, :only => [:show, :index] do
    resources :subscribers
  end

  match 'products/:product_id/subscriber/:id/confirm' => 'subscribers#confirm_subscription' ,:as => :confirm
  match '/dashboard' => 'Admin::products#index', :as => :admin_root

  root :to => 'products#show'
end

