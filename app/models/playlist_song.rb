class PlaylistSong < ActiveRecord::Base
  belongs_to :event
  belongs_to :song
  has_many :votes
end
