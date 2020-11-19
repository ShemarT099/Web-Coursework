Rails.application.routes.draw do
  devise_for :users
  resources :tasks
  # home page
  root 'home#home'
  resources :articles
  root 'articles#index'

  get 'football', to: 'home#football'
  get 'contact', to: 'home#contact'
  post 'request_contact', to: 'home#request_contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
