class Album < ActiveRecord::Base
  attr_accessible :title, :year

  has_many :songs

	validates :title, :presence => {:message => 'Title cannot be blank, Album not saved'}

end
