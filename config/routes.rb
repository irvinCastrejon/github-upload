Rails.application.routes.draw do

  devise_for :users
 get 'bienvenida', to: 'home#index'
 root to: 'static_pages#home'
 
resources :articles

resources :phones
get '/states/:id/phones', to: 'states#phones', as: :state_phones

resources :semaphores 
get '/states/:id/semaphores', to: "states#semaphores", as: :state_semaphore
resources :states
end 
