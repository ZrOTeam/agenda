Rails.application.routes.draw do
  
  resources :groups

  devise_for :users
  
  resources :memos

  resources :events

  resources :contacts



  get '/c/:id', to: 'home#contact', as: 'contact_edit'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'
end
