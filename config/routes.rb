Eventos::Application.routes.draw do
  match '/auth/:provider/callback' => 'authentications#create'
  match 'authentications/destroy' => 'authentications#destroy', :method => :delete, :as => :logout
  
  root :to => 'pages#index'
  
  post "event" => "pages#event", :as => :event
  get "terms" => "pages#terms", :as => :terms
end
