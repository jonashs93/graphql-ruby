Rails.application.routes.draw do
  post '/graphql', to: 'graphql#execute'

  resources :graphql_client, only: :index
end
