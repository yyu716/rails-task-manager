Rails.application.routes.draw do

  get '/tasks', to: 'tasks#index', as: :tasks
  get '/tasks/new', to: 'tasks#new', as: :new_task

  get '/tasks/:id', to: 'tasks#show', as: :task
  post '/tasks', to: 'tasks#create'

  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task

  patch '/tasks/:id', to: 'tasks#update'

  delete 'tasks/:id', to: 'tasks#destroy'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
