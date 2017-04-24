Rails.application.routes.draw do
    root 'application#index`'
    get 'static_pages/home'
    get 'static_pages/help'
    get '/signup', to: 'users#new'
end