Rails.application.routes.draw do
  get 'users/new'

  root                'pages#dashboard'

  get 'ticket'    => 'pages#tickets'

  get 'knowledge_platform'   =>  'pages#knowledge_platform'

  get 'reports'    => 'pages#reports'

  get 'contact_us'    => 'pages#contact_us'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
