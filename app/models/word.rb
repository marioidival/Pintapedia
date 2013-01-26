class Word < ActiveRecord::Base
  attr_accessible :autor, :description, :name
  has_many :comments
end
