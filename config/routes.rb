Rails.application.routes.draw do
  resources :insta_photos
  root 'photos#index'
  resources :photos do
    resources :comments
  end
end
