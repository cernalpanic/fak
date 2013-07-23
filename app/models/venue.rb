class Venue < ActiveRecord::Base
  attr_accessible :city, :country, :description, :name, :state

  has_many :shows
end
