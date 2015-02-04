Rails.application.routes.draw do

  root 'pages#welcome'

  resources :snacks

  # get 'snacks' => 'snacks#index', as: :snacks
  # get 'snacks/new' => 'snacks#new', as: :new_snack
  # get 'snacks/:id' => 'snacks#show', as: :snack
  # get 'snacks/:id/edit' => 'snacks#edit', as: :edit_snack
  # patch 'snacks/:id' => 'snacks#update'
  # post "snacks" => 'snacks#create'
  # delete "snacks/:id" => 'snacks#destroy'


end
