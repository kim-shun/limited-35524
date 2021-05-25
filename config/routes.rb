Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  devise_scope :user do
    get 'questions', to: 'users/registrations#new_question'
    post 'questions', to: 'users/registrations#create_question'
  end
  root to: "home#index"
end
