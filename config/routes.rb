Rails.application.routes.draw do


  root 'login#index'



  post "/login", to: "login#auth"
  get '/home', to: 'home#index'
  get '/product_code/:code', to: 'product_code#verify'



  resources :products
  resources :companies
end
