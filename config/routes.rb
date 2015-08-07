Rails.application.routes.draw do
  resources :meetings
  # Routes for Calendar:
  get '/calendar' => 'calendar#show'
  #------------------------------
  
  # Routes for Sessions:
  # CREATE
  get '/sessions/new' => 'sessions#new'
  get '/sessions/create' => 'sessions#create'
  
  # DESTROY
  get '/sessions/destroy' => 'sessions#destroy'
  #------------------------------
  
  # Routes for the Event resource:
  # CREATE
  get '/new_event' => 'events#new'
  get '/create_event' => 'events#create'

  # READ
  get '/events/indexv' => 'events#indexv'
  get '/events/indexe' => 'events#indexe'
  get '/events/indexd' => 'events#indexd'
  get '/events/:id' => 'events#show'

  # UPDATE
  get '/events/:id/edit' => 'events#edit'
  get '/events/:id/update' => 'events#update'

  # DELETE
  get '/events/:id/destroy' => 'events#destroy'
  #------------------------------

  # Routes for the Task resource:
  # CREATE
  get '/new_task' => 'tasks#new'
  get '/create_task' => 'tasks#create'

  # READ
  get '/tasks/indexv' => 'tasks#indexv'
  get '/tasks/indexe' => 'tasks#indexe'
  get '/tasks/indexd' => 'tasks#indexd'
  get '/tasks/:id' => 'tasks#show'

  # UPDATE
  get '/tasks/:id/edit' => 'tasks#edit'
  get '/tasks/:id/update' => 'tasks#update'

  # DELETE
  get '/tasks/:id/destroy' => 'tasks#destroy'
  #------------------------------

  # Routes for the User resource:
  # CREATE
  get '/new_user' => 'users#new'
  get '/create_user' => 'users#create'

  # READ
  get '/users/:id' => 'users#show'

  # UPDATE
  get '/users/:id/edit' => 'users#edit'
  get '/users/:id/update' => 'users#update'

  # DELETE
  get '/users/:id/destroy' => 'users#destroy'
  #------------------------------
  
  
  
  get '/date/:date' => 'date#show'
end
