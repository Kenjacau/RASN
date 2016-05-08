class Song < ActiveRecord::Base
  has_many :song_requests
  has_many :playlist_song
end
