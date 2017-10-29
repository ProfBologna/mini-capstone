Rails.application.routes.draw do
  
get '/' => 'great_old_ones#index'
get '/great_old_ones' => 'great_old_ones#index'
get '/great_old_ones/new' => 'great_old_ones#new'
post '/great_old_ones' => 'great_old_ones#create'
get '/great_old_ones/:id' => 'great_old_ones#show'
get 'great_old_ones/:id/edit' => 'great_old_ones#edit'
patch 'great_old_ones/:id' => 'great_old_ones#update'
delete 'great_old_ones/:id' => 'great_old_ones#destroy'

get '/signup' => 'users#new'
post '/users' => 'users#create'

get '/login' => 'sessions#new'
post '/login' => 'sessions#create'
get '/logout' => 'sessions#destroy'

get '/orders/new' => 'orders#new'
post '/orders' => 'orders#create'
get '/orders/:id' => 'orders#show'

get '/cart' => 'carted_goos#index'
post '/carted_goos' => 'carted_goos#create'
delete '/carted_goos/:id' => 'carted_goos#destroy'

end
