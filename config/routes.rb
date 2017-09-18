Rails.application.routes.draw do
  post 'session/create'
  
  get 'session/login'
  
  delete 'session/destroy'

  get 'images/create'

  root 'home#index'

  get 'home/index'

  get '/home/test'

  get '/home/admin_index' => 'home#admin_index'
  
  get '/posts/new_title'
  
  post '/posts/create_title'
  
  get '/home/post_content/:id' => 'home#post_content'
  
  resources :posts
  
  resources :images

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
