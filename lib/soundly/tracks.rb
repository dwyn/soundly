require 'rspotify'
require 'pry'
require_relative 'cli'

class Soundly::Tracks


	PLAYLIST = []

	def initialize
		RSpotify.authenticate("b866a06729ba441d8819fe317fa0d8b3", "f00fcf04738f4f73a8e880923f767a13")
		playlist = RSpotify::Playlist.find('spotifycharts', '37i9dQZEVXbLRQDuF5jeBp')
		playlist.tracks.each do |song|
			PLAYLIST << song
		end
  end

	def all
		PLAYLIST.each.with_index(1) do |song, index|
			puts "#{index}. #{song.name}"
		end
	end

end
