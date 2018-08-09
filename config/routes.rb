Rails.application.routes.draw do
  resources :events
  devise_for :users, controllers: { omniauth_callbacks: 'callbacks' }
  resources :calendars
  root 'calendars#index'
end
