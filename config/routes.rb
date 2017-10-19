Rails.application.routes.draw do
  
  
  devise_for :users, controllers: { 
        registrations: 'users/registrations',
        confirmations: 'users/confirmations'
    }
  
  devise_for :accounts, controllers: { 
        registrations: 'accounts/registrations',
        confirmations: 'accounts/confirmations'
    }
      
  get 'guest/index'
    
  root 'guest#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
