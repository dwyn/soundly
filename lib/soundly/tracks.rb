require 'rspotify'
require 'pry'
require_relative 'cli'
require 'dotenv/load'

class Soundly::Tracks
	@@blue_playlist = []
	@@red_playlist = []
	@@all = []
	

	def initialize
		blue_playlist
		red_playlist
  end

	def authenticate #LOG IN
		RSpotify.authenticate("ENV['CLIENT_ID']", "ENV['CLIENT_SECRET']")
		binding.pry
	end

	def blue_playlist #SPOTIFY TOP 50 IN AMERICA
		authenticate
		playlist = RSpotify::Playlist.find('spotifycharts', '37i9dQZEVXbLRQDuF5jeBp')
		playlist.tracks.each do |song|
			@@blue_playlist  << song
		end
	end

	def red_playlist #MY PERSONAL SPOTIFY PLAYLIST
		authenticate
		playlist = RSpotify::Playlist.find('dwyn.hrmn', '7BQJkBkL5muBFOc7ok76XO')
		playlist.tracks.each do |song|
			@@red_playlist  << song
		end
	end

	def self.blue_songs
		@@blue_playlist
	end

	def self.red_songs
		@@red_playlist
	end

	def self.all(playlist)
		if playlist == "blue"
			@@blue_playlist
		else
			@@red_playlist
		end
	end

end
