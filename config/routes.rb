Rails.application.routes.draw do
  devise_for :users      
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "books#index"
  resources :books
  resources :user_books, only: [:index]
  post '/borrow_book', to: 'user_books#borrow_book', as: 'borrow_book'
  patch '/return_book', to: 'user_books#return_book', as: 'return_book'
end
