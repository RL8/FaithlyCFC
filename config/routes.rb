Rails.application.routes.draw do
  
  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"},
  				controllers: {omniauth_callbacks: "omniauth_callbacks"}

  root 'static_pages#welcome'
  get 	'newsfeed'	=>	'static_pages#feed'

end