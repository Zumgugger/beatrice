Rails.application.routes.draw do

  get 'sessions/new'

    # get '/patients/:id', to: 'patients#show'
    # get '/patients/:id', to: 'patients#show', as: 'patient'

root 'products#index'
    
get 'products/list', to: 'products#list', as: 'products_list'
get 'contact', to: 'static_pages#contact'
get 'about', to: 'static_pages#about'
    
  resources :products
  resources :users
  resources :blogposts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
