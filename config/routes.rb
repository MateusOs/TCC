Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'main#index' 
  get 'about', to: 'about#index'
  get 'novoUsuario', to: 'registrations#new'
  post 'novoUsuario', to: 'registrations#create'
  get 'usuariosList', to: 'registrations#index'
end
