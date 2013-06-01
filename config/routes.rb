VisionBoard20::Application.routes.draw do

  # root to: "high_voltage/pages#show", id: 'index'
  unauthenticated do
    root to: "high_voltage/pages#show", id: 'index'
  end

  devise_for :users

  authenticated :user do
    root to: "Slideshows#index"
  end

  authenticate do
    resources :soundtracks
    resources :playlists
    resources :photo_arrays
    resources :photo_libraries
    resources :slideshows
    resources :songs
    resources :photographs
  end
  resources :usersend
end
