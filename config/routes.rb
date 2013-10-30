Levelupmeals::Application.routes.draw do
  devise_for :customers

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  # root :to => 'dashboard#index'

end
