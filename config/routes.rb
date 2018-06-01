Rails.application.routes.draw do
  devise_for :users
  get 'mains/show'
  resources :mains do resources :facts
                      resources :newarrivals
                      resources :abouts
  end

  resources :categories do resources :products
  end

  resources :careers

  root 'mains#show'
  
end