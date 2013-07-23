class Album < ActiveRecord::Base
  attr_accessible :title, :year

  has_many :songs
end
