Rails.application.routes.draw do
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
  get '/signup', to:"vips#new"
  post '/signup', to:"vips#create"
  get '/denglu', to:"logins#new"
  post '/denglu', to:"logins#create"
  delete '/dengchu', to:"logins#destory"
  get '/edit', to:"vips#edit"
 
  
  resources :vips
end
