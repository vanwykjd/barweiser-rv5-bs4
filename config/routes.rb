Rails.application.routes.draw do
  

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  devise_for :users, controllers: { 
    registrations: 'users/registrations',
    confirmations: 'users/confirmations'
  }
  
  devise_for :company_accounts, controllers: { 
    registrations: 'company_accounts/registrations',
    confirmations: 'company_accounts/confirmations'
  }
  
  
  authenticated :users do
    root to: 'dashboard#show' , as: :authenticated_root
  end
  
  get 'dashboard/show'
  
  get 'guest/index'
    
  root 'guest#index'

end
