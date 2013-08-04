class Song < ActiveRecord::Base
	attr_accessible :title, :album_id

	belongs_to :album
	belongs_to :show
	belongs_to :artist
	has_many :links

	validates_uniqueness_of :title, :case_sensitive => false
	validates :title, :presence => {:message => 'Title cannot be blank, Song not saved. Even a wrong title is better than none; we can edit it later if needed.'}
end
