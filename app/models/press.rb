class Press < ActiveRecord::Base
  attr_accessible :blurb, :show_id, :url

  belongs_to :show
end
