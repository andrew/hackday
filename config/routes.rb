Hackday::Application.routes.draw do
  resources :hacks
  resources :votes

  match '/auth/:provider/callback', to: 'sessions#create'
  match '/results' => 'votes#results', :as => :results
  root :to => 'votes#index'
end
