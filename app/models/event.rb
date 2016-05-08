class Event < ActiveRecord::Base
  belongs_to :user
  has_many :playlist_songs
  has_many :events
  has_many :votes
end
