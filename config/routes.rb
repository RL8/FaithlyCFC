Rails.application.routes.draw do
  
  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}
  root 'static_pages#welcome'
  get 'static_pages/welcome'
  get 'static_pages/feed'
  
end