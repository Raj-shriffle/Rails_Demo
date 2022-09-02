Rails.application.routes.draw do
  resources :userss 
  
  root to: 'userss#index'

  devise_for :user

  devise_scope :user do
      get '/user/sign_out', to: 'devise/sessions#destroy'
  end

end
