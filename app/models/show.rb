class Show < ActiveRecord::Base
  attr_accessible :date, :description, :img, :venue_id
        
  belongs_to :venue
  has_many :songs
  has_many :artists
  has_many :presses

	validates :date, :presence => {:message => 'Date cannot be blank, Show not saved; even a close but wrong date is better than no date. We can always edit it later.'}
end
