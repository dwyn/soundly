require 'rspotify'
require 'pry'
require_relative 'cli'

class Soundly::Tracks
	# attr_accessor :track_name, :artist, :album, :genre, :duration, :popularity, :position, :preview_url

	@@blue_playlist = []
	@@red_playlist = []


	def initialize
		blue_playlist
		red_playlist
  end

	def blue_playlist
		RSpotify.authenticate("b866a06729ba441d8819fe317fa0d8b3", "f00fcf04738f4f73a8e880923f767a13")
		playlist = RSpotify::Playlist.find('spotifycharts', '37i9dQZEVXbLRQDuF5jeBp')
		playlist.tracks.each do |song|
			@@blue_playlist  << song
		end
	end

	def red_playlist
		RSpotify.authenticate("b866a06729ba441d8819fe317fa0d8b3", "f00fcf04738f4f73a8e880923f767a13")
		playlist = RSpotify::Playlist.find('dwyn.hrmn', '7BQJkBkL5muBFOc7ok76XO')
		playlist.tracks.each do |song|
			@@red_playlist  << song
		end
	end

	def blue_songs
		@@blue_playlist
	end

	def red_songs
		@@red_playlist
	end

	def self.all(playlist)
		if playlist == blue
			@@blue_playlist
		else
			@@red_playlist
		end
	end

end
