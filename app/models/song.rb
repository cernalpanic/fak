class Song < ActiveRecord::Base
	attr_accessible :title, :album_id
	belongs_to :albums
	belongs_to :shows
	has_many :links
	validates_uniqueness_of :title, :case_sensitive => false
end
