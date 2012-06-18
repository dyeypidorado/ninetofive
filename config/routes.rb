Ninetofive::Application.routes.draw do
  mount Mercury::Engine => '/'

  devise_for :admins

  namespace :admin do
    resources :products do
      resources :pages
      resources :subscribers
    end
  end

  resources :products, :only => [:show, :index] do
    resources :subscribers do
      get "confirm_subscription", :on => :member, :as => :confirm
      get "step(/:step_code)" => "subscribers#show_step", :on => :member, :as => :step
    end
  end

  match '/dashboard' => 'Admin::products#index', :as => :admin_root

  root :to => 'products#show'
end
