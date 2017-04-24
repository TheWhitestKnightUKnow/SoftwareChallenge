Rails.application.routes.draw do
  get 'sessions/new'

    root 'static_pages#home'
    get '/help',      to: 'static_pages#help'
    get '/signup',    to: 'users#new'
    get '/users',     to: 'users#index'
    get '/products',  to: 'products#index'
    get '/stores',    to: 'stores#index'
    get    '/login',  to: 'sessions#new'
    post   '/login',  to: 'sessions#create'
    delete '/logout', to: 'sessions#destroy'
    resources :users
    resources :products
    resources :stores
end