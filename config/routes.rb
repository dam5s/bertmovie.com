BertmovieCom::Application.routes.draw do
  resources :updates

  resources :messages, only: [:create]
  root to: 'home#index'
end
