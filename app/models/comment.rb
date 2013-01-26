class Comment < ActiveRecord::Base
  belongs_to :word
  attr_accessible :autor, :body
end
