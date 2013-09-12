class Show < ActiveRecord::Base
  attr_accessible :date, :description, :img, :city, :country, :venue

  has_many :songs
  has_many :links
  has_many :artists
  has_many :presses

	validates :date, :presence => {:message => 'Date cannot be blank, Show not saved; even a close but wrong date is better than no date. We can always edit it later.'}

  def self.twitter (city)
		Twitter.configure do |config|
			config.consumer_key = CONFIG[:consumer_key] 
			config.consumer_secret = CONFIG[:consumer_secret] 
			config.oauth_token = CONFIG[:oauth_token] 
			config.oauth_token_secret = CONFIG[:oath_token_secret] 
		end

    Twitter.search("firstaidkitband%20#{city}")

  end

end
