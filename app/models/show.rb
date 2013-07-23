class Show < ActiveRecord::Base
  attr_accessible :date, :description, :img

  has_one :venue
  has_many :songs
  has_many :bands
end
