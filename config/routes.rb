Rails.application.routes.draw do
  resources :books
  resources :sports

  devise_for :users
  resources :tasks
  # home page
  root 'home#home'
  resources :articles
  root 'articles#index'

  resources :home do
    collection do
      get :book
    end
  end

  resources :home do
    collection do
      get :current_bookings
    end
  end

  get 'sports', to: 'home#sports'
  get 'book', to: 'home#book#new'
  get 'current_bookings', to: 'home#book'

  get 'contact', to: 'home#contact'
  post 'request_contact', to: 'home#request_contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
