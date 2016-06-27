Rails.application.routes.draw do

  resources :product_categories
root 'products#index'
    
#sessions
get     'login' => "sessions#new"
post    'login' => 'sessions#create'
delete  'logout'=>  'sessions#destroy'

resources :products
resources :users
resources :blogposts
resources :account_activations, only: [:edit]
 
#additional routes    
get 'products/list', to: 'products#list', as: 'products_list'

#static pages
get 'contact', to: 'static_pages#contact'
get 'about', to: 'static_pages#about'
    

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
