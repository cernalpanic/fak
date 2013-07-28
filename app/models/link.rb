class Link < ActiveRecord::Base
  attr_accessible :end, :start, :mediatype, :url, :song_id

  belongs_to :song

	validates :url, :presence => {:message => 'Url cannot be blank, Link not saved'}

end
