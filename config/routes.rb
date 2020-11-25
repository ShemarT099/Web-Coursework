Rails.application.routes.draw do
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
      get :my_bookings
    end
  end

  get 'sports', to: 'home#sports'
  get 'book', to: 'home#book'
  get 'my_bookings', to: 'home#my_bookings'

  get 'football', to: 'home#football'
  get 'contact', to: 'home#contact'
  post 'request_contact', to: 'home#request_contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
