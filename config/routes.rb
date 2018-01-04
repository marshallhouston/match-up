Rails.application.routes.draw do
  root to: 'admission_scores#new'

  resources :admission_scores, only: [:new, :create, :show]
  resources :schools, only: [:index]
end
