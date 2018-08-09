Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'callbacks' }
  resources :calendars do
    resources :events
  end
  root 'calendars#index'
end
