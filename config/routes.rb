Rails.application.routes.draw do
  devise_for :users
  root 'tweets#index'
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :tweets
end
