Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    post "/users" => "users#create"

    post "/sessions" => "sessions#create"

    get "/contacts" => 'contacts#index'
    get "/contacts/:id" => 'contacts#show'
    post "/contacts" => 'contacts#create'
    patch "/contacts/:id" => 'contacts#update'
    delete "/contacts/:id" => 'contacts#destroy'
  end
end
