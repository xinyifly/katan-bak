Rails.application.routes.draw do
  get 'candidates/index'
  resources :votes
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
