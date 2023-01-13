Rails.application.routes.draw do
  root 'tasks#daily_index'
  resources :tasks do
    collection do
      get 'daily_index'
    end
  end




end
