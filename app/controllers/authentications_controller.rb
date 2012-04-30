# encoding: UTF-8
class AuthenticationsController < ApplicationController
  def create
    auth = request.env['omniauth.auth']
    
    session[:facebook] = {}
    session[:facebook][:access_token] = auth.credentials.token
    session[:facebook][:provider] = auth['provider']
    session[:facebook][:uid] = auth['uid']
    session[:facebook][:name] = auth['info']['first_name']
    flash[:notice] = "Autenticação realizada com sucesso!"
    redirect_to root_url
  end

  def destroy
    session[:facebook] = nil
    flash[:notice] = "Successfully destroyed authentication."
    redirect_to root_url
  end
end
