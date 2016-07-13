Rails.application.routes.draw do

  root                'pages#dashboard'

  get 'ticket'    => 'pages#tickets'

  get 'knowledge_platform'   =>  'pages#knowledge_platform'

  get 'reports'    => 'pages#reports'

  get 'contact_us'    => 'pages#contact_us'

  get 'signup' => 'users#new'
  resources :users
end
