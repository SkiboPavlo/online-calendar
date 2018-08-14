Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'callbacks' }
  resources :events
  resources :calendars
  root 'calendars#index'
end
