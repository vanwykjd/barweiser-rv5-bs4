Rails.application.routes.draw do
  

  resources :signup, only: [:new, :create]
  get 'signup/planform', to: 'signup#planform', as: 'signup/planform'
  get 'signup/planform/edit', to: 'signup#planform', as: 'signup/planform/edit'
  
  post 'signup/registration', to: 'signup#registration', as: 'signup/registration'
  get 'signup/registration/edit', to: 'signup#registration', as: 'signup/registration/edit'
  
  post 'signup/register', to: 'signup#register', as: 'signup/register'
  
  
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
  get 'thanks', to: 'payments#thanks', as: 'thanks'

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
