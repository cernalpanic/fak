class Artist < ActiveRecord::Base
  attr_accessible :name, :url
	belongs_to :show
	has_many :songs

	validates :name, :presence => {:message => 'Name cannot be blank, Artist not saved'}
end
