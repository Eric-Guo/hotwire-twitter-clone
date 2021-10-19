Rails.application.routes.draw do
  resources :tweets do
    resource :like
    resource :retweet
  end
  resource :double_turbo, only: [:show]
  root to: "tweets#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
