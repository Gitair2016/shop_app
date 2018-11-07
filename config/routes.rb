Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
  get '/signup', to:"vips#new"
  post '/signup', to:"vips#create"
 
  
  resources :vips
end
