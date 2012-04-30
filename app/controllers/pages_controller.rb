class PagesController < ApplicationController
  
  
  def event
    @event = FbGraph::Event.fetch("294872727253925")
    ids = @event.attending(:access_token => session[:facebook][:access_token]).map { |u| u.identifier }
    @users = HTTParty.get("https://graph.facebook.com/?ids=#{ids.join(",")}").parsed_response
    @users_hash = { :male => [], :female => [], nil => [] }
    
    #@users.map { |user| @users_hash[user.value["gender"].to_sym] << {:user => user.second["name"], :id => user.second["id"]} }
  end
  
end
