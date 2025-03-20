Rails.application.routes.draw do
  get "photos/new"
  get "photos/create"
  get "photos/index"
  get "photos/show"
  get "photos/edit"
  get "photos/update"
  get "photos/destroy"
  get "partners/new"
  get "partners/create"
  get "partners/index"
  get "partners/show"
  get "partners/edit"
  get "partners/update"
  get "partners/destroy"
  get "venues/new"
  get "venues/create"
  get "venues/edit"
  get "venues/update"
  get "venues/index"
  get "venues/show"
  get "venues/destroy"
  get "pages/home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  root to: 'pages#home'
  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
  # get '/', to: 'pages#home', as: 'home'
end
