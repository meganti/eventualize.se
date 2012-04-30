Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, "294613237287030", "a0401f108c5ea18ae8cda324d2f9b1a9", :scope => 'email,offline_access,read_stream', :display => 'popup'
end