Rails.application.routes.draw do

  #user
  root to: "sites#index"

  get "/users", to: "users#index", as: "users"

  get "/users/new", to: "users#new", as: "new_user"

  post "/users", to: "users#create"

  get "/users/:id", to: "users#show"

  #for site page to link to signup
  get "/sign_up", to: "users#new", as: "sign_up"

  #sessions
  get "/sign_in", to: "sessions#new"
  post "/sessions", to: "sessions#create"

  #articles
  get '/articles', to: 'articles#index'

  get "/articles/new", to: "articles#new", as: "new_article"

  post "/articles", to: "articles#create"

  #used to show us the new articles we created
  get '/articles/:id', to: 'articles#show', as: "article"

  get 'articles/:id/edit', to: 'articles#edit', as: "edit_article"

   #The update route
  put "/articles/:id", to: "articles#update",  as: "update_article" 

  #The delete route
  delete "/articles/:id", to: "articles#destroy"



  #sites

  get 'sites/index'

  get 'sites/about'

  get 'sites/contact'



end
