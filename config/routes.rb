Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'cars#index', as: 'home'

  resources :cars do
  	resources :jobs
  end
end
