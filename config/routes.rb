VisionBoard20::Application.routes.draw do

  root to: "high_voltage/pages#show", id: 'index'
  devise_for :users
  resources :soundtracks
  resources :playlists
  resources :photo_arrays
  resources :photo_libraries
  resources :slideshows
  resources :songs
  resources :photographs
  resources :usersend
end
