Rails.application.routes.draw do
  

  devise_for :users, controllers: { 
        registrations: 'users/registrations',
        confirmations: 'users/confirmations',
    }
  
  devise_for :accounts, controllers: { 
        registrations: 'accounts/registrations',
        confirmations: 'accounts/confirmations'
    }
  
  resources :services, only: [:show]
  
  resources :payments, only: [:new, :create]

  authenticated :user do
    root 'dashboard#show', as: :authenticated_user_root
  end

  

  authenticated :account do
    root 'dashboard#show', as: :authenticated_account_root
  end

  
  
  get 'guest/index'
    
  root 'guest#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
