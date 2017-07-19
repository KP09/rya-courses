Rails.application.routes.draw do

  # Devise authentication for users
  devise_for :users, controllers: { sessions: 'users/sessions' }

  # Devise authentication for schools
  devise_for :schools, controllers: { sessions: 'schools/sessions' }

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
