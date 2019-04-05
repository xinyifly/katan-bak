Rails.application.routes.draw do
  get 'ranking/index'
  get 'candidates', to: 'candidates#index'
  resources :votes, only: [:index, :show, :new, :create]
  devise_for :users
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
