class Soundly::CLI

	def call
		greetings
		menu
	end

	# def list_songs
	# 	@songs = Soundly::Trending.today
	# 	@songs.each.with_index(1) do |song, i|
	# 		puts "#{i}. #{song}"
	# 	end
	# end

	def greetings
		puts "Hi there human. Lend me your earholes, I'll fill them will 👽"
		puts "Todays rando pick is (blah) blah by (blah blah blah) coming in at (blah blahs song number) from todays top 50 on Soundcloud."
		sleep 1
	end

	def menu
		user_input = nil
		array = 1..50
		# binding.pry

		while user_input != "exit"
			puts "Type 1 to list todays top 50 trending songs on SoundCloud"
			puts "Type 2 to select specific song"
			puts "Type '3' to list another random song from today's top 50"
			puts "Type 'exit' to exit"

			user_input = gets.strip.downcase

			case user_input
			when "1"
				puts "here is todays top list"
				# list_songs
			when "2"
				puts "which song would you like to select? (Select 1-50)"
				puts "(This parts a bit tricky?)"
			when "3"
				puts "Here's another random song, Human"
			when "exit"
				exit
			else
				puts "Silly human. That's not an optuon. Try again."
			end
		end
	end

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
