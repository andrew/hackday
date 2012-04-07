Hackday::Application.routes.draw do
  resources :hacks
  resources :votes

  root :to => 'votes#index'
end
