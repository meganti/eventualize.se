Eventos::Application.routes.draw do
  #resources :authentications
  match '/auth/:provider/callback' => 'authentications#create'
  
  root :to => 'pages#index'
  
  get "event" => "pages#event", :as => "event"
end
