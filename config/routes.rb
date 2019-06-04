Rails.application.routes.draw do
  resources :songs
  resources :artist
  post 'songs_upload' => 'songs#upload'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
