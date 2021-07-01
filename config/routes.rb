Rails.application.routes.draw do
  
  resource :contacts, only: [:new, :create], path_names: {:new => ''} 

  resources :articles
  
end