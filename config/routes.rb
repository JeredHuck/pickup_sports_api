Rails.application.routes.draw do
  get 'profiles/show'
  scope '/' do
    post 'login', to: 'sessions#create'
  end

  resources :events
  scope :profile do
    get ':username', to: 'profiles#show'
  end
  resources :posts
  resources :users do 
   get 'posts', to: 'users#posts_index'
  end

  

  get "up" => "rails/health#show", as: :rails_health_check
end
