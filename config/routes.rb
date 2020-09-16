Rails.application.routes.draw do
  root to: 'application#redirect_to_login'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/secret', to: 'secrets#show'
  delete '/logout' => 'sessions#destroy'
end
