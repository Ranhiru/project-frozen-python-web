Rails.application.routes.draw do
  root 'welcome#index'
  get '/auth/:provider/callback', to: 'session#create'
  get '/login', to: 'auth#login'
end
