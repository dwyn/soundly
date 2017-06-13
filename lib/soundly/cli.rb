require 'rspotify'
require 'pry'
require_relative 'tracks'

class Soundly::CLI
	def call
		pills
		greetings
		menu
		goodbye
	end

	def pills
		@@pills = Soundly::Tracks.new
	end

	def greetings
		string = printf %Q(Greetings human. Lend me your earholes, I will fill them with beautiful sounds👽); sleep 1
		print "\n"
		printf %Q(You have options: Blue pill, or Red pill.)
		print "\n"
		printf %Q(• The blue pill, allows you to sample a playlist shaped by your fellow homosapien's listening habits (top 50 currently trending songs on spotify).)
		print "\n"
		printf %Q(• Take the red pill, you get to sample an ever evolving playlist of sounds I fancy.)
	end

	def red_playlist
		puts %Q(I like your style, hooman.)
		puts %Q(Heres what I am currently listening to.)
		@@pills.red_songs.each.with_index(1) {|object, index| puts "#{index}.  #{object.name} by #{object.artists[0].name} \n"}
		puts %Q(Type a song's listing number to learn more.)
		puts %Q(Type "Menu" to head back to the main menu.)
	end

	def blue_playlist
		puts %Q(:/ Okay, fine.)
		puts "\n"
		puts "Here's whats going on with music in your country, on planet E-Arth..."
		@@pills.blue_songs.each.with_index(1) {|object, index| puts "#{index}.  #{object.name} by #{object.artists[0].name} \n"}
		# binding.pry
		puts %Q(Type a song's listing number to learn more.)
		puts %Q(Type "Menu" to head back to the main menu.)
	end

	def blue_pill
		print "\n"
		puts "Blue Pill: Main Menu"
		sleep 1
		blue_playlist

		user_input = nil
		while user_input != "menu"
			user_input = gets.strip
			if user_input == "menu"
				menu
			elsif (1..50).to_a.include?(user_input.to_i)
				puts "Here are details on #{@@pills.blue_songs[user_input.to_i-1].name}"
				song = @@pills.blue_songs[user_input.to_i-1]
				puts "Song name:   #{song.name}"
				puts "Artist:      #{song.artists[0].name}"
				puts "Album:       #{song.album.name}"
				puts "Duration:    #{song.duration_ms}"
				puts "Popularity:  #{song.popularity}"
				puts "Preview_url: #{song.preview_url}" if song.preview_url != nil
				print "\n"
			else
				puts %(You've lost me human. Try again.)
				puts %(Select a number from the list to learn more about a song.)
				print "\n"
				puts %(Or you can type "Menu" to head back to main menu of course.)
				print "\n"
			end
		end
	end

	def red_pill
		print "\n"
		puts "Red Pill: Main Menu"
		red_playlist

		user_input = nil
		while user_input != "menu"
			user_input = gets.strip
			object = @@pills.red_songs.count.to_i
			# binding.pry
			if user_input == "menu"
				menu
			elsif (1..object).include?(user_input.to_i)
				puts "Here are details on #{@@pills.red_songs[user_input.to_i-1].name}"
				song = @@pills.red_songs[user_input.to_i-1]
				puts "Song name:   #{song.name}"
				puts "Artist:      #{song.artists[0].name}"
				puts "Album:       #{song.album.name}"
				puts "Duration:    #{song.duration_ms}"
				puts "Popularity:  #{song.popularity}"
				puts "Preview_url: #{song.preview_url}" if song.preview_url != nil
				print "\n"
			else
				puts %(You've lost me human. Try again.)
				puts %(Select a number from the list to learn more about a song.)
				print "\n"
				puts %(Or you can type "Exit" to head back to main menu or course.)
				print "\n"
			end
		end
	end

	def menu
		user_input = nil
		puts "Main Menu"
		puts %Q(Type "Blue" for the Blue pill, and "Red" for the Red pill.)
		puts %Q(Type "Exit" to part ways.)
		print "\n"
		puts %Q(Choose wisely, human...)

		while user_input != "exit"
			user_input = gets.strip.downcase
			if user_input == "exit"
				goodbye
			elsif user_input == "blue"
				blue_pill
			elsif user_input == "red"
				red_pill
			else
				puts "Come again?"
			end
		end
	end

	def goodbye
		puts %Q(Goodbye human.)
		puts %Q(See you soon.)
		exit
	end
end
