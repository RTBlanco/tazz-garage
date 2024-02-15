Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  root 'application#index'
  resources :about
  resources :services
  resources :bookings
  resources :technicians
  resources :testimonials
  resources :contacts
  
  get 'about', to: 'application#about'
  get 'services', to: 'application#services'
  get 'booking', to: 'application#booking'
  get 'technicians', to: 'application#technicians'
  get 'testimonial', to: 'application#testimonial'
  get 'contact', to: 'application#contact'
end
