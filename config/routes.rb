Rails.application.routes.draw do

  # Devise authentication for users
  devise_for :users, controllers: { sessions: 'users/sessions' }

  # Devise authentication for school_admins
  devise_for :school_admins, controllers: { sessions: 'school_admins/sessions' }

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
