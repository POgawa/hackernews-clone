class Post < ActiveRecord::Base
  validates :link, :presence => true
  validates :comments, :presence => true
  has_many :votes
end
