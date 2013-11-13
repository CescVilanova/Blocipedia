Blocipedia::Application.routes.draw do
  
  devise_for :users 

  resources :wikis do
    resources :collaborators
  end 

  root to: 'welcome#index'

end
