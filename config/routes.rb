Rails.application.routes.draw do
  root 'pages#home'
  #byebug
  get 'about', to: 'pages#about'

  resources :articles
end
