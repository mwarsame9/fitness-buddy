Rails.application.routes.draw do
  resources :workouts
  devise_for :users, controllers: { sessions: 'users/sessions' }

  root :to => 'users#index'

  resources :users do
  end

  resources :measurements do
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
