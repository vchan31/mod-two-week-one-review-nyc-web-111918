Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #resources :application 
   resources :seas
  get '/', to:'application#welcome'
  get '/seas', to: 'seas#index'

   get '/seas/new', to: 'seas#new'
  post '/seas', to: 'seas#create'
 get '/seas/:id/edit', to:'seas#edit'
  get '/seas/:id', to: 'seas#show'

  
  put '/seas/:id', to: 'seas#update'


  
 

 


  
  
  # get '/hotdogs/:id', to:'hotdogs#show'
  #  get '/hotdogs/new', to:'hotdogs#new'
  #  post '/hotdogs', to:'hotdogs#create'
  
  #  get '/hotdogs/:id/edit', to:'hotdogs#edit'
  #  patch '/hotdogs/:id', to:'hotdogs#update'
  #  delete '/hotdogs/:id', to:'hotdogs#delete'
 
end
