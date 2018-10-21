Rails.application.routes.draw do

  get 'contatti/contatti'
  get 'statistiche/statistiche'
  devise_for :users, controllers: {omniauth_callbacks: "users/omniauth_callbacks"}

  root to: 'welcome#index'
end
