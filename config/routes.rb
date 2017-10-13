Rails.application.routes.draw do
  
  devise_for :owners
    resources :owners, only: [:show] 
  
  
  authenticated :owners do
    root to: 'owners#show' , as: :authenticated_root
  end
  
  get 'guest/index'
    
  root 'guest#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
