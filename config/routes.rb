Rails.application.routes.draw do

   # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  get '/tasks', to: 'tasks#index', as: :tasks

  # Route to create a new task
  get '/tasks/new', to: 'tasks#new', as: :new_task

  # Route to view a single task
  get '/tasks/:id', to: 'tasks#show', as: :task

  # Route to create a new task
  post '/tasks', to: 'tasks#create'

  # Route to edit a task
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task

  # Route to update a task
  patch '/tasks/:id', to: 'tasks#update'

  # Route to delete a task
  delete '/tasks/:id', to: 'tasks#destroy'
end
