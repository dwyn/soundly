class Soundly::Tracks
	@@blue_playlist = []
	@@red_playlist = []
	@@all = []

	def authenticate #LOG IN
		RSpotify.authenticate(ENV['CLIENT_ID'], ENV['CLIENT_SECRET'])
	end

	def initialize
		authenticate
		blue_playlist
		red_playlist
	end
	
	
	def self.all(playlist)
		if playlist == "blue"
			@@blue_playlist
		else
			@@red_playlist
		end
	end

	def blue_playlist #SPOTIFY TOP 50 IN AMERICA
		playlist = RSpotify::Playlist.find('spotifycharts', '37i9dQZEVXbLRQDuF5jeBp')
		playlist.tracks.each do |song|
			@@blue_playlist  << song
		end
	end

	def red_playlist #MY PERSONAL SPOTIFY PLAYLIST
		playlist = RSpotify::Playlist.find('dwayne.', '2wbLPMQHxG3vhxQzRNEOm9')
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
end
