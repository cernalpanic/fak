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
		Twitter.configure do |config|
			config.consumer_key = CONFIG[:consumer_key]
			config.consumer_secret = CONFIG[:consumer_secret]
			config.oauth_token = CONFIG[:oauth_token]
			config.oauth_token_secret = CONFIG[:oauth_token_secret]
		end

    Twitter.search('@firstaidkitband')

  end

end
