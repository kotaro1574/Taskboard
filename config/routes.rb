Rails.application.routes.draw do
  devise_for :users,
    controllers: { registrations: 'registrations' } 

  root 'top#index'

  get '/users/:id', to: 'users#show', as: 'user'


  resources :list, only: %i(new create edit update destroy) do
    resources :card, except: %i(index)
  end
end
