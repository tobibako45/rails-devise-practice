Rails.application.routes.draw do


  get 'admins/show'
  get 'admins/index'
  devise_for :admins, controllers: {
      sessions: 'admins/sessions',
      passwords: 'admins/passwords',
      registrations: 'admins/registrations'
  }
  devise_for :users, controllers: {
      sessions: 'users/sessions',
      passwords: 'users/passwords',
      registrations: 'users/registrations'
  }

  # 後ろにないとダメ
  resources :users, only: [:show, :index]
  resources :admins, only: [:show, :index]



end
