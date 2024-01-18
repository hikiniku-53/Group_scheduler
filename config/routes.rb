Rails.application.routes.draw do

  devise_for :members
  # ルートパス
  root to: 'homes#top'

  resources :members, only: [:index, :show]
  resources :groups, only: [:index, :new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
