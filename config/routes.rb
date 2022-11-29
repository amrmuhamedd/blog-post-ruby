Rails.application.routes.draw do
  resources :blogs
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  namespace :api, defaults:{format: :json} do
    namespace :v1 do
      resources :blogs
    end
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
