Rails.application.routes.draw do

  root                'pages#dashboard'

  get 'ticket'    => 'pages#tickets'

  get 'knowledge_platform'   =>  'pages#knowledge_platform'

  get 'reports'    => 'pages#reports'

  get 'contact_us'    => 'pages#contact_us'

  get 'signup' => 'users#new'

  get 'login'   =>  'sessions#new'

  post 'login'  =>   'sessions#create'

  delete 'logout'  =>  'sessions#destroy'
  
  resources :users
end
