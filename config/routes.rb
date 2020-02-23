Rails.application.routes.draw do
  get 'categories/index'
  get 'categories/show'
  root 'home#index'

  get 'home/index'
  get 'articles/index'
  get 'articles/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
