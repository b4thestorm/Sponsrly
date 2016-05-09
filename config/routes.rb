Rails.application.routes.draw do 

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users,  controllers: { sessions: 'users/sessions', registrations: 'my_devise/registrations' }
  resources :events, only: [:new, :create, :index]
  resources :sponsors, only: :new
  root to: "home#index"

end
