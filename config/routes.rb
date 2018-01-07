Rails.application.routes.draw do
  root to: 'welcome#index'

  get '/auth/google', as: :google_login
  get '/auth/google/callback', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: :logout

  get '/dashboard', to: 'dashboard#show', as: :dashboard

  resources :admission_scores, only: [:new, :create, :show, :index]
  resources :schools, only: [:index]
end
