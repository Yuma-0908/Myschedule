Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
    resources :todos do
      resources :comments
    end
    
    root 'todos#index'
    
end
