BertmovieCom::Application.routes.draw do
  resources :messages, only: [:new, :create]
  root to: 'home#index'
end
