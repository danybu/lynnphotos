Rails.application.routes.draw do
  devise_for :users
  get 'static_pages/home'
  get 'static_pages/about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :lynn_photos
  root 'static_pages#home'

  get "/nextPhoto" => "static_pages#next_photo", as: "nextPhoto"
  get "/previousPhoto" => "static_pages#previous_photo", as: "previousPhoto"
  post "/write_mail" => "static_pages#write_mail", as: "writeMail"
  post "/write_simple_mail" => "static_pages#write_simple_mail", as: "writeSimpleMail"

end
