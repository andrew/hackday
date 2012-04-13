Hackday::Application.routes.draw do
  resources :hacks
  resources :votes

  root :to => 'hacks#index'

  # match '/results' => 'votes#results'
  # root :to => 'votes#index'
end
