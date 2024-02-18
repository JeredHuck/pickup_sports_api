Rails.application.routes.draw do
  resources :events
  resources :posts
  resources :users do 
   get 'posts', to: 'users#posts_index'
  end

  

  get "up" => "rails/health#show", as: :rails_health_check
end
