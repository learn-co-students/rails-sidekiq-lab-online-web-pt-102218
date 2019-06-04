Rails.application.routes.draw do
  resources :artist, :songs
  post 'songs/upload', to: 'songs#upload'
end
