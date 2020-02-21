Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'sessions#new'

  post '/welcome' => 'sessions#create'

  post '/logout' => 'sessions#destroy'

  get 'secret' => 'secrets#show'

  get 'hello' => 'application#hello'
end
