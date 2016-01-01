Rails.application.routes.draw do

  resources :works
  resources :services
  devise_for :users

  get 'home/contact', as: :contact
  get 'home/about', as: :about

  authenticated :user do
    root 'home#register'
  end

  unauthenticated :user do
    devise_scope :user do
      root 'home#index', as: :landing_root
    end
  end


end
