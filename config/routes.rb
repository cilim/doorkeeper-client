Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'login#new'
  resource :login

  get 'auth/:provider/callback' => 'omniauth#callback'
end
