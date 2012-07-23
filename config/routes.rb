Ninetofive::Application.routes.draw do
  get "confirm_subscription/:confirmation_code" => "subscribers#confirm_subscription", as: :confirmation

  mount Mercury::Engine => '/'

  devise_for :admins

  namespace :admin do
    resources :subscribers
    resources :static_pages
    resources :affiliates
    resources :categories, :only => [:index, :show] do
      resources :products
    end
    resources :products do
      resources :subscribers
      resources :campaigns
    end
    resources :pages
    resources :campaigns do 
      resources :pages
    end
  end

  resources :pages, only: [:show] do
    resources :subscribers do
      get "step(/:step_code)" => "subscribers#show_step", :on => :member, :as => :step
    end
  end
  resources :products do
    resources :subscribers
  end
  resources :static_pages, only: [:show]

  resources :categories, :only => [:show] do
    resources :products, :only => [:index]
  end

  resources :products, :only => [:show, :index] do
  end

  match '/dashboard' => 'Admin::categories#index', :as => :admin_root

  root :to => 'static_pages#homepage'
end
