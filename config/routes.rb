Rails.application.routes.draw do
  root to: 'welcome#index'
  
  devise_for :users, controllers: {omniauth_callbacks: "users/omniauth_callbacks", registrations: "users/registrations"}

  match 'users/:id' => 'deleteuser#destroy', :via => :delete, :as => :admin_destroy_user

  match 'statistics' => 'statistics#index', :via => :get
  match 'statistics' => 'statistics#create', :via => :post
  match 'statistics/:id' => 'statistics#destroy', :via => :delete

  match 'personal_statistics' => 'personal_statistics#index', :via => :get
  match 'personal_statistics' => 'personal_statistics#create', :via => :post
  match 'personal_statistics/:id' => 'personal_statistics#destroy', :via => :delete

  get 'contatti/contatti'

end

