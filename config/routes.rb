Rails.application.routes.draw do
  root 'welcome#index'
  get '/auth/:provider/callback', to: 'session#create', as: 'auth_callback'
  get 'auth/failure', to: 'session#failure'
  get 'signout', to: 'session#destroy', as: 'signout'
  get '/login', to: 'auth#login'
end
