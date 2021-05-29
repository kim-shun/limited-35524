Rails.application.routes.draw do
  get 'messages/index'
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  devise_scope :user do
    get 'questions', to: 'users/registrations#new_question'
    post 'questions', to: 'users/registrations#create_question'
    #get 'questions/search', to: 'users/registrations#search_question'
    # get 'questions/edit', to: 'users/registrations#edit_question'
    # patch 'questions/update', to: 'users/registrations#update_question'
  end
  root to: "home#index"
  get 'home/search'
  resources :users, only: [:edit, :update, :show]
  resources :rooms, only: [:index, :new, :create, :destroy] do
    resources :messages, only: [:index, :create]
  end
end
