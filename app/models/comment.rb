class Comment < ActiveRecord::Base

  include HasGravatar

  belongs_to :blog

end
