Rails.application.routes.draw do
  
  root 'static_pages#welcome'
  get 'static_pages/welcome'
  get 'static_pages/feed'
  
end