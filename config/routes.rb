Rails.application.routes.draw do
  
  devise_for :users, :controllers => {
    :registrations => "registrations"
  }
  resources :users, only: [:show]
  
  root  'static_pages#home'
  match '/about', to: 'static_pages#about', via: 'get'
  match '/help', to: 'static_pages#help', via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'
  
end
