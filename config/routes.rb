Rails.application.routes.draw do
  root 'pages#dashboard'

  get 'pages/tickets'

  get 'pages/knowledge_platform'

  get 'pages/reports'

  get 'pages/contact_us'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
