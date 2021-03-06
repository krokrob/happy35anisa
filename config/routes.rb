Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :gifts, only: [:index, :new, :show, :create, :destroy] do
    collection do
      get 'mine'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
