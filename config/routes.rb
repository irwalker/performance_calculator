Rails.application.routes.draw do
  root to: 'aircraft#index'
  resources :aircraft
end
