Rails.application.routes.draw do

    root to: 'todos#index'

    get '/todos', to: "todos#index", as: "todos"

    get '/todos/new', to: 'todos#new', as: "new_todo"

    post "/todos", to: "todos#create"

    patch "/todos/:id", to: "todos#update"

    get "/todos/:id", to: "todos#index", as: "todo"

    delete "/todos/:id", to: "todos#destroy"


    get 'authors', to: 'authors#index', as: "authors"

    get 'authors/new', to: 'authors#new', as: "new_author"

    post "/authors", to: "authors#create"

    patch "/authors/:id", to: "todos#update"

    get "/authors/:id", to: "authors#index", as: "author"

    delete "/authors/:id", to: "authors#destroy"
end

	