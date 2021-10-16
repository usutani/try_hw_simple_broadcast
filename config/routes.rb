Rails.application.routes.draw do
  resources :messages, only: %i[ index create]
  root to: "messages#index"
end
