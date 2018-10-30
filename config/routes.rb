Rails.application.routes.draw do
  resources :personal_statistics
  resources :statistics

  get 'contatti/contatti'
  
  devise_for :users, controllers: {omniauth_callbacks: "users/omniauth_callbacks", registrations: "users/registrations"}

  root to: 'welcome#index'

  match 'users/:id' => 'deleteuser#destroy', :via => :delete, :as => :admin_destroy_user

end

