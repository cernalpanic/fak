class Venue < ActiveRecord::Base
  attr_accessible :city, :country, :description, :name, :state

  has_many :shows
  accepts_nested_attributes_for :shows

	validates :name, :presence => {:message => 'Name cannot be blank, Venue not saved; even a close but wrong name is better than no name. We can always edit it later.'}
end
