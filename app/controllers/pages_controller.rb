class PagesController < ApplicationController
  
  def event
    redirect_to root_url unless session[:facebook].present?
    
    arr = params[:event].split("/")
    id = arr[arr.find_index("events") + 1]
    @event = FbGraph::Event.fetch(id)
    ids = @event.attending(:access_token => session[:facebook][:access_token]).map { |u| u.identifier }
    @users = HTTParty.get("https://graph.facebook.com/?ids=#{ids.join(",")}").parsed_response
    
    @males   = @users.values.select { |user| user["gender"] == "male"   }.flatten
    @females = @users.values.select { |user| user["gender"] == "female" }.flatten
  end
  
end
