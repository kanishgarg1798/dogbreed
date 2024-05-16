Rails.application.routes.draw do
  get '/dogs', to: 'dogs#index', as: 'dogs_index'
  post '/dogs/fetch_image', to: 'dogs#index', as: 'fetch_dog_image'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
