class Question < ActiveRecord::Base

  include HasGravatar

  has_many :answers

end
class Question < ActiveRecord::Base

  include HasGravatar

  has_many :question

end
