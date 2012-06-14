Ninetofive::Application.routes.draw do
  devise_for :admins

  namespace :admin do
    resources :products do
      resources :subscribers
    end
  end

  resources :products, :only => [:show, :index] do
    resources :subscribers do
      get "confirm_subscription", :on => :member, :as => :confirm
    end
  end

  match '/dashboard' => 'Admin::products#index', :as => :admin_root

  root :to => 'products#show'
end

