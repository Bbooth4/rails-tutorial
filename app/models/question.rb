class Question < ActiveRecord::Base

  # the below calculates the gravitar automatically based upon the email 
  def gravatar
    "http://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(email)}"
  end 
  
end
