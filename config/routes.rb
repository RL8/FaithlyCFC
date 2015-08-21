Rails.application.routes.draw do
  
  devise_for :users
  root 'static_pages#welcome'
  get 'static_pages/welcome'
  get 'static_pages/feed'
  
end