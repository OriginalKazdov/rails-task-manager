Rails.application.routes.draw do
  #read
  get 'tasks', to: 'tasks#index'
  #create
  get 'tasks/new', to: 'tasks#new', as: :new_task
  post 'tasks', to: 'tasks#create'
  #show
  get 'tasks/:id', to: 'tasks#show', as: :task
  #update
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'
  #delete
  delete 'tasks/:id', to: 'tasks#destroy'

  get "up" => "rails/health#show", as: :rails_health_check
end
