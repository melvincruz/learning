class SecretNumber
	attr_reader :secret
	def initialize(secret)
		@secret = secret
	end

	def self.random_secret
		secret = rand(10000)
	end

	def guessing
		input = gets.chomp
		loop do
			if input == @secret
				puts "Correct! Nice job."
				return true
			else input > @secret
				puts "To high, Guess again."
				 input < @secret
				puts "To low, Guess again."
				return false
			end
		end
	end
end

puts "Welcome to my guessing game!, " 
puts "I am thinking of a number, Start Guessing!"

tries = 0

think = 1

 think.times do
	x = SecretNumber.random_secret
	if x.guessing
		tries = tries+1
	end
end

puts "Finally you Got it it, " + secret.to_s + " was the number, and it only took you " + tries.to_s + "tries!"
