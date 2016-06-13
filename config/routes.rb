Rails.application.routes.draw do
    
    # get '/patients/:id', to: 'patients#show'
    # get '/patients/:id', to: 'patients#show', as: 'patient'

root 'products#index'
    
get 'products/list', to: 'products#list', as: 'products_list'
    
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
