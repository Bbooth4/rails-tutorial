class Blog < ActiveRecord::Base

  include HasGravatar

  has_many :comments

end
