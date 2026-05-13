Rails.application.routes.draw do
  resource :session
  resources :passwords, param: :token
  # get "/books", to: "books#index"
  # get "/books/:id", to: "books#show"
  # get "/books/new", to: "books#new"
  # get "/books/:id/edit", to: "books/edit"
  #
  # patch "/books/:id", to: "books/#update"
  #
  # post "/books", to: "books#create"
  #
  # delete "/books/:id", to: "books#destory"
  root "books#index"
  resources :authors
  resources :books do
    resources :subscribers, only: [ :create ]
  end
  resource :unsubscribe, only: [ :show ]
end
