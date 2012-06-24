Ninetofive::Application.routes.draw do
  resources :static_pages, only: [:show]
  get "confirm_subscription/:confirmation_code" => "subscribers#confirm_subscription", as: :confirmation

  resources :pages, only: [:show] do
    resources :subscribers do
      get "step(/:step_code)" => "subscribers#show_step", :on => :member, :as => :step
    end
  end

  mount Mercury::Engine => '/'

  devise_for :admins

  namespace :admin do
    resources :static_pages
    resources :products do
      resources :pages
      resources :subscribers
    end
    resources :affiliates
  end

  resources :products, :only => [:show, :index] do
  end

  match '/dashboard' => 'Admin::products#index', :as => :admin_root

  root :to => 'products#show'
end

