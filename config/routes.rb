Rails.application.routes.draw do
  get 'sessions/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'main#index' 
  get 'about', to: 'about#index'

  get 'registrations', to: 'registrations#index'
  post 'registrations/new', to: 'registrations#create'
  get 'registrations/new', to: 'registrations#new'
  get 'registrations/:id/edit', to: 'registrations#edit', as: 'edit_registration'
  get 'registrations/:id', to: 'registrations#show', as: 'show_registration'
  patch 'registrations/:id', to: 'registrations#update', as: 'update_registration'
  put 'registrations/:id', to: 'registrations#update'
  delete 'registrations/:id/delete', to: 'registrations#destroy', as: 'destroy_registration'
  get 'registrations/:id/delete', to: 'registrations#destroy'

  get    'sign_in'   => 'sessions#new'
  post   'sign_in'   => 'sessions#create'
  get 'sign_out' => 'sessions#destroy'
  delete 'sign_out'  => 'sessions#destroy'

  get 'projetos', to: 'projetos#index'
  post 'projetos/new', to: 'projetos#create'
  get 'projetos/new', to: 'projetos#new'
  get 'projetos/:id/edit', to: 'projetos#edit', as: 'edit_projeto'
  get 'projetos/:id', to: 'projetos#show', as: 'show_projeto'
  patch 'projetos/:id', to: 'projetos#update', as: 'update_projeto'
  put 'projetos/:id', to: 'projetos#update'
  delete 'projetos/:id/delete', to: 'projetos#destroy', as: 'destroy_projeto'
  get 'projetos/:id/delete', to: 'projetos#destroy'

end
