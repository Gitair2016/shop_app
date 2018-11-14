Rails.application.routes.draw do
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
  get '/signup', to:"vips#new"
  post '/signup', to:"vips#create"
  get '/denglu', to:"logins#new"
  post '/denglu', to:"logins#create"
  delete '/dengchu', to:"logins#destory"
  get '/edit', to:"vips#edit"

   get '/show', to:'static_pages#show'
   post '/show', to:'pingluns#create'
   get '/index',to:'pingluns#index'
   delete '/show',to:'pingluns#destroy'

   get'/caiwu', to:'caiwus#new'
   post'/caiwu', to:'caiwus#create'
   get'/caiwus', to:'caiwus#index'
 
  
  resources :vips
  resources :pingluns,  only:[:create, :destory]
  resources :caiwus
end
