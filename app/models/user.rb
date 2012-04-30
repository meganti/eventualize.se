class User < ActiveRecord::Base
  has_many :authentications
  
  attr_accessible :email
end
