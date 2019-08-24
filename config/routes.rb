Rails.application.routes.draw do
  root to: 'cocktails#index'
  resources :cocktails do
    resources :doses, only: %i[new create]
  end
  resources :doses, only: :destroy
end
