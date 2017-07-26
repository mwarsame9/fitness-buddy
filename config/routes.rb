Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }

  root :to => 'workouts#index'

  resources :users do
  end

  resources :workouts do
    resources :exercises
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
