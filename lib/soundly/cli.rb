require 'rspotify'
require 'pry'
require_relative 'tracks'

class Soundly::CLI
	def call
		greetings
		menu
		goodbye
	end

	def greetings
		puts %Q(Greetings human. Lend me your earholes, I will fill them with beautiful sounds👽)
		sleep 1
		print "\n"
		puts %Q(You have options: Blue pill, or Red pill.)
		print "\n"
		puts %Q(The blue pill, allows you to sample a playlist shaped by your fellow homosapien's listening habits (top 50 currently trending songs on spotify).)
		print "\n"
		puts %Q(Take the red pill, you get to sample an ever evolving playlist of sounds I fancy.)
		sleep 1
	end

	def blue_playlist
		@blue_pill = Soundly::Tracks.new
		binding.pry
		@blue_pill.all

WORK ON GETTING SONGS IN TO SEPERATE LISTS, INSIDE THE TRACKS CLASS
		
		puts %Q(Okay, fine.)
		puts "\n"
		puts "Here's whats going on with music in your country, on planet E-Arth..."
		@@song_array.each.with_index(1) {|object, index| puts "#{index}. #{object}"}
		puts "Type a song's list number to learn more about that song."
		puts %Q(Type "Menu" to head back to the menu.)
		print "\n"
		puts %Q(You can also type "Exit" if you don't feel up to making any important decisions right now)
	end

	def blue_pill
		blue_playlist
		binding.pry
		print "\n"
		puts "Blue Pill: Main Menu"
		puts "**Prints list of top 50 trending songs**"

		user_input = nil
		while user_input != "exit"
			puts "Type the number of the song you'd like to learn about"
			puts "Or type exit to head back to Main Menu"

			user_input = gets.strip
			song_list = (1..50).to_a
			if user_input == "exit"
				menu
			elsif song_list.include?(user_input.to_i)
				puts "Here are details on song #{user_input}"
			else
				puts %(You've lost me human. Try again.)
				puts %(Select a number from the list to learn more about a song.)
				prints "\n"
				puts %(Or you can type "Exit" to head back to main menu or course.)
				prints "\n"
			end
		end
	end

	def red_pill
		# red_playlist
		print "\n"
		puts "Red Pill: Main Menu"
		puts "**Prints MY PLAYLIST**"

		user_input = nil
		while user_input != "exit"
			puts "Type the number of the song you'd like to learn about"
			puts "Or type exit to head back to Main Menu"

			user_input = gets.strip
			song_list = (1..50).to_a
			if user_input == "exit"
				menu
			elsif song_list.include?(user_input.to_i)
				puts "Here are details on song #{user_input}"
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
		print "\n"
		print "\n"
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

# @spotify_top_50.each {|song| puts song.detail}
