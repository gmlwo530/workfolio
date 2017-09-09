Rails.application.routes.draw do
  root 'home#index'

  get 'home/index'

  get '/home/test'

  get '/home/admin_index' => 'home#admin_index'

  get '/home/new'

  get '/home/edit'

  post '/posts' => 'home#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
