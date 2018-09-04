Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'callbacks' }
  resources :calendars do
    get :collective_status, on: :member
    get :personal_status, on: :member
    resources :events
  end
  root 'calendars#index'
end
