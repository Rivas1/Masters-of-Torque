Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'pages#home', as: 'home'


resources :vehicles
get 'signup', action: :new, controller: 'users'
resources :users
end
