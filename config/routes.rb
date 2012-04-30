Eventos::Application.routes.draw do
  #resources :authentications
  match '/auth/:provider/callback' => 'authentications#create'
  match 'authentications/destroy' => 'authentications#destroy', :method => :delete, :as => :logout
  
  root :to => 'pages#index'
  
  get "event" => "pages#event", :as => "event"
end
