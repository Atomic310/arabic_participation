Rails.application.routes.draw do
  devise_for :officers
  resources :reviews
  resources :events
  resources :logs
  resources :officers
  resources :members
  root 'home#interface'
  get 'home/interface'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get ':controller(/:action(/:id))'
  get '/search', to: "reviews#search"
  put '/reset', to: 'members#reset', as: 'reset'
end
