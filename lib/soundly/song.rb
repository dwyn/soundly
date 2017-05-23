require 'rspotify'
require 'pry'
require_relative 'api'
require_relative 'cli'

class Soundly::Song
  # attr_accessor :position, :artist, :plays, :detail, :playlist

	def self.detail_song_view(song)
		song.track.name
		song.track.artist

		song.track.album
		song.track.genre
		song.track.duration_ms
		song.track.popularity
		# preview? => open in browswer if possible
	end

	def self.song
		
	end


end
