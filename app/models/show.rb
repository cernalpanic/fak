class Show < ActiveRecord::Base
  attr_accessible :date, :description, :img, :venue_id
        
  belongs_to :venue
  has_many :songs

end
