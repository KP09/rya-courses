Rails.application.routes.draw do
  root to: 'pages#home'

  # Devise authentication for users
  devise_for :users, controllers: { sessions: 'users/sessions', omniauth_callbacks: 'users/omniauth_callbacks'  }

  # Devise authentication for school_admins
  devise_for :school_admins, controllers: { sessions: 'school_admins/sessions' }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
