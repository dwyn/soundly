class Soundly::CLI

	def call
		greetings
		list_songs
		menu
	end

	def list_songs
		@songs = Soundly::Trending.today
		@songs.each.with_index(1) do |song, i|
			puts "#{i}. #{song}"
		end
	end

	def greetings
		puts "Hi there human. Lend me your earholes, I'll fill them will 👽"
		puts "Todays rando pick is #{blah blah} by #{blah blah blah} coming in at #{song number} from todays top 50 on
		SoundCloud."
	end

	# def menu
	# 	puts "Type "1" to list todays top 50 trending songs on SoundCloud"
	# 	puts "Type "2" to list another random song from today's top 50"
	# 	puts "Type "3" to exit"
	# 	user_input = nil
	# 	while user_input != "exit"
	# 		user_input = gets.strip
	# 		case user_input
	# 		when "more"
	# 			puts #(clears screen?) and prints more info on random song mentioned above
	# 			puts "Type back to go back to Main Menu"
	# 			user_input = gets.strip
	# 			if user_input == back
	# 				#back to main menu
	# 			else
	# 				puts "Silly human. That's not an optuon. Try again."
	# 			end
	# 		when "1"
	# 			list_songs
	# 			#logic some where in here to give the option to see details on a specific song
	# 		when "2"
	# 			#prints another random song with all of its information
	# 		when "3"
	# 			exit
	# 		else
	# 			puts "Silly human. That's not an optuon. Try again."
	# 		end
	# 		break if user_input == exit
	# 	end
	# end

	# def menu
	# 	input = nil
	# 	while input is != "exit"
	# 		puts 'What would you like to do?'
	# 		input = gets.strip.downcase
	# 		case input
	# 		when "1"
	# 			puts "This"
	# 		when "2"
	# 			puts "That"
	# 		when "3"
	# 			puts "And the third"
	# 		when "list"
	# 			list_songs
	# 		else
	# 			puts "Not sure what you are looking for here, human. Try again."
	# 		end
	# 	end
	# end
	#
	# def exit
	# 	return "Thanks for stopping by! Until next time!"
	# end

end

#
# class Soundly::CLI
# 	def call
# 		list_songs
# 		menu
# 		goodbye
# 	end
#
# 	def list_songs
# 		puts <<-DOC
# 			1. This is song one.
# 			2. This is song two.
# 			3. This is song three.
# 		DOC
# 	end
#
# 	def menu
# 		input = nil
# 		while input is != "exit"
# 			puts 'What would you like to do?'
# 			input = gets.strip.downcase
# 			case input
# 			when "1"
# 				puts "This"
# 			when "2"
# 				puts "That"
# 			when "3"
# 				puts "And the third"
# 			when "list"
# 				list_songs
# 			else
# 				puts "Not sure what you are looking for here, human. Try again."
# 			end
# 		end
# 	end
#
# 	def goodbye
# 		puts "smell ya later!"
# 	end
# end
