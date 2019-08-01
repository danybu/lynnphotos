Rails.application.routes.draw do
  devise_for :users
  get 'static_pages/home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :lynn_photos
  root 'static_pages#home'
end
