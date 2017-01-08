Rails.application.routes.draw do


root 'product_categories#index'
    
#sessions
get     'login' => "sessions#new"
post    'login' => 'sessions#create'
delete  'logout'=>  'sessions#destroy', as: 'logout'

resources :product_categories
resources :products
resources :users
resources :blogposts
resources :account_activations, only: [:edit]
 
#additional routes    
get 'products_list', to: 'products#list', as: 'products_list'
get 'product_categories_list', to: 'product_categories#list', as: 'product_categories_list'

#static pages
get 'contact', to: 'static_pages#contact'
get 'about', to: 'static_pages#about'
get 'atelier', to: 'static_pages#atelier'
    

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
