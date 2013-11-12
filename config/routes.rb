Blocipedia::Application.routes.draw do
  
  resources :collaborators

  devise_for :users

  resources :wikis

  root to: 'welcome#index'

end
