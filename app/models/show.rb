class Show < ActiveRecord::Base
  attr_accessible :date, :description, :img, :venue_id
        
  belongs_to :venue
  has_many :songs
  has_many :links
  has_many :artists
  has_many :presses

	validates :date, :presence => {:message => 'Date cannot be blank, Show not saved; even a close but wrong date is better than no date. We can always edit it later.'}

  def self.twitter 
		#TODO where do i put this? 
		#application.yml but wire up heroku somehow
		Twitter.configure do |config|
			config.consumer_key = "G4KmE5LHdXcIxHbrD6RmQ" 
			config.consumer_secret = "x8PIPsFup1ilxM5CWhUMnP63mMBxVrlGoDWVw1Q"
			config.oauth_token = "16470076-cC0dVrv1DvrPOEcSjDCmHoiUk9S1pqj1vqANoApSw"   
			config.oauth_token_secret = "VTMVIPClGJ6ZcqeMpxbIXtOBIfLVXJ5jy8PlCFyqmO0" 
		end

    Twitter.search('@firstaidkitband')

  end

end
