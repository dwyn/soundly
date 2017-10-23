# • SEE IF THERE IS A WAY TO PRINT OUT UNDERLINED TEXT IN TERMINAL

# • SEE IF THERE IS A WAY TO CHECK FOR INTERNET CONNECTION BEFORE DOING ANYTHING

# • IS THERE A WAY TO ADD A DATABASE AND STORE THE LAST PLAYLIST IN THE EVEN THERE IS NO INTERNET CONNECTION


require 'rspotify'
require 'pry'
require_relative 'tracks'

class Soundly::CLI
	def call
		greetings
		menu
		@@pills = Soundly::Tracks.new
		# goodbye
	end

	# def pills
	# end

	def greetings
		puts %Q(Hey there...);
		print %Q(You like music?); sleep 2
		puts %Q( Cool, me too.); sleep 1
		print "\n"
	end

	def red_playlist
		puts %Q(I like your style.); sleep 1
		print " "
		puts %Q(Heres what I am currently listening to.)
		@@pills.red_songs.each.with_index(1) {|object, index| puts "#{index}.  #{object.name} by #{object.artists[0].name} \n"}
		puts %Q(Type a song's listing number to learn more.)
		puts %Q(Type "Menu" to head back to the main menu.)
		puts %Q(Type exit to peace out.)
	end

	def blue_playlist
		puts %Q(America's top 50, coming up...); sleep 1
		puts "\n"
		@@pills.blue_songs.each.with_index(1) {|object, index| puts "#{index}.  #{object.name} by #{object.artists[0].name} \n"}
		puts %Q(Type a song's listing number to learn more.)
		puts %Q(Type "Menu" to head back to the main menu.)
		puts %Q(Type exit to peace out.)
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
			elsif user_input == "exit"
				goodbye
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
				puts %(Try again.)
				print " \n"
				puts %(Select a number from the list, "Menu" or "Exit")
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
			elsif user_input == "exit"
				goodbye
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
				puts %(Try again.)
				print " \n"
				puts %(Select a number from the list, "Menu" or "Exit")
				print "\n"
			end
		end
	end

	def menu
		user_input = nil
		puts "Main Menu"
		puts "*********"
		puts %Q(Blue Pill or Red Pill or Exit?)

		while user_input != "exit"
			user_input = gets.strip.downcase
			if user_input == "exit" || user_input == "3"
				goodbye
			elsif user_input == "blue" || user_input == "blue pill" || user_input == "1"
				blue_pill
			elsif user_input == "red" || user_input == "red pill" || user_input == "2"
				red_pill
			else
				puts "Come again?"
			end
		end
	end

	def goodbye
		puts %Q(Peace out.)
		exit
	end
end
