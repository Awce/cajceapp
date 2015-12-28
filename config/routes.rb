Rails.application.routes.draw do

  resources :services
  devise_for :users

  authenticated :user do
    root 'home#register'
  end

  unauthenticated :user do
    devise_scope :user do
      root 'home#index', as: :landing_root
    end
  end


end
