class Venue < ActiveRecord::Base
  attr_accessible :city, :country, :description, :name, :state

  has_many :shows
  accepts_nested_attributes_for :shows
end
