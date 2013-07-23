class Song < ActiveRecord::Base
	attr_accessible :title, :album_id
	belongs_to :album
	has_many :links
	validates_uniqueness_of :title, :case_sensitive => false
end
