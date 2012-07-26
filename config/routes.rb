Ninetofive::Application.routes.draw do
  namespace :mercury do
    resources :images
  end

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
    resources :settings, only: [:index] do
      collection do
        put "save_settings"
      end
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

  resources :static_pages, only: [:show], path: "/sections/"

  resources :categories, :only => [:show] do
    resources :products, :only => [:index]
  end

  resources :products, :only => [:show, :index] do
  end

  match '/dashboard' => 'Admin::categories#index', :as => :admin_root

  root :to => 'static_pages#homepage'
end

