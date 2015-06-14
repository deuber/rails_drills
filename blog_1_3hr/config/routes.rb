Rails.application.routes.draw do
  root to: "sites#index"



  resources :users, except: [:new]

  get "/sign_up", to: "users#new", as: "sign_up"

  get "/sign_in", to: "sessions#new"
  post "/sessions", to: "sessions#create"


  get '/articles', to: "articles#index"

  #new is method to handle the request
  get '/articles/new', to: 'articles#new', as: "new_article"

  #used to show us the new articles we created
  get '/articles/:id', to: 'articles#show', as: "article"

  get '/articles', to: 'articles#index'

  # user can create new articles, post
  post "/articles", to: "articles#create"

  #route that specifies the articles id we want to edit
  get '/articles/:id/edit', to: 'articles#edit'  , as: "edit_article"

  #The update route
  put "/articles/:id", to: "articles#update",  as: "update_article" 


  #The delete route
  delete "/articles/:id", to: "articles#destroy"


end

