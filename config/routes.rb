Rails.application.routes.draw do
  root to: 'madlibs#index'
  resources :madlibs, only: :index
  resources :stories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
