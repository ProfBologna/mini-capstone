Rails.application.routes.draw do
get '/' => 'great_old_ones#index'
get '/great_old_ones' => 'great_old_ones#index'

get '/great_old_ones/new' => 'great_old_ones#new'
post '/great_old_ones' => 'great_old_ones#create'

get '/great_old_ones/:id' => 'great_old_ones#show'

end
