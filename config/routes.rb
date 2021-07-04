Rails.application.routes.draw do
  
  devise_for :users
   root to: "home#index"

  resource :contacts, only: [:new, :create], path_names: {:new => ''} 

  resources :articles do
    resources :comments
  end  
end