Rails.application.routes.draw do
  
  # CREATE
  get '/new_movie' => 'gifs#new'
  get '/create_movie' => 'gifs#create'
  
  # READ
  get '/movies' => 'gifs#index'
  get '/movie/:id' => 'gifs#show'
  
  # UPDATE
  get '/movie/:id/edit' => 'gifs#edit'
  get '/update_movie/:id' => 'gifs#update'
  
  #DESTROY
  get '/movie/:id/destroy' => 'gifs#destroy'
  
  root :to => 'gifs#index'
  
end
