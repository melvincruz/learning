class SecretNumber
	attr_reader :secret
	def initialize(secret)
		@secret = secret
	end

	def self.random_secret
		SecretNumber.new(rand(10000))
	end

	def guessing
		input = gets.chomp.to_i
		if input == @secret
			puts "Correct! Nice job."
			return true			
		elsif input > @secret
			puts "Too high, Guess again."
			return false
		elsif input < @secret 
			puts "Too low, Guess again."
			return false
		end
	end
end

puts "Welcome to my guessing game!, " 
puts "I am thinking of a number, press enter to Start Guessing!"

correct = false

tries = 0

secret = SecretNumber.random_secret

while  correct == false do
	correct = secret.guessing
	tries = tries+1
end

puts "Finally you Got it it, " + secret.secret.to_s + " was the number, and it only took you " + tries.to_s + " tries!"
