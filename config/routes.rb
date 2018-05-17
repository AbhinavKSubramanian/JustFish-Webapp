Rails.application.routes.draw do
  get 'mains/show'
  resources :mains do resources :facts
  end
  root 'mains#show'
end
