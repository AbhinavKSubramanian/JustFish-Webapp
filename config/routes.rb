Rails.application.routes.draw do
  devise_for :users
  get 'mains/show'
  resources :mains do resources :facts
                      resources :newarrivals
                      resources :abouts
                      resources :backgrounds
                      resources :galleries
  end

  resources :categories do resources :products
  end

  resources :careers
  resources :products

  root 'mains#show'
  
end