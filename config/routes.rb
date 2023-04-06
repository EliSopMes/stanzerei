Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :wohnungs do
    resources :anfrages, only: %i[new create]
  end

  get 'pages/impressum', to: 'pages#impressum', as: 'impressum'
  get 'pages/agbs', to: 'pages#agbs', as: 'agbs'
end
