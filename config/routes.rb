Rails.application.routes.draw do
  root to: 'welcome#index'

  get '/auth/google', as: :google_login
  get '/auth/google/callback', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: :logout

  get '/dashboard', to: 'dashboard#show', as: :dashboard

  resources :admission_scores, only: [:new, :create, :show, :index]
  resources :admission_scores do
    resources :schools, only: :index, to: "score_schools#index"
  end

  resources :schools, only: [:index]

  get '/:slug', to: 'schools#show', as: :school
end
