# 1. Have detailed requirements or specifications in writtern form.
# 2. Extract major nouns -> classes
# 3. Extract major verbs -> instance methods
# 4. Group instance methods into classes 

# require 'rubygems'
# require 'pry'

class Card 
	attr_accessor :suit, :value

	def initialize(s, v)
		@suit = s 
		@value = v
	end

	def to_s
		"This is the card! #{value} of #{find_suit}"
	end

	def find_suit
		case suit
			when "H" then "Hearts"
			when "D" then "Diamonds"
			when "C" then "Clubs"
			when "S" then "Spades"
		end
	end
end


class Deck
	attr_accessor :cards

	def initialize
		@cards = []
		['H', 'D', 'S', 'C'].each do |suit|
			['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A'].each do |face_value|
				@cards << Card.new(suit, face_value)
			end
		end
		# @cards = @cards * num_decks
		scramble!
	end

	def scramble!
		cards.shuffle!
	end

	def deal 
		cards.pop
	end
end

module Hand
	def show_hand
		puts "----- #{name}'s Hand -----"
		cards.each do|card|
		end
			puts "=> #{card}"
	end

	def total
		"some total"
	end

	def add_card(new_card)
		@card << new_card
	end
end


class Player
	include Hand

	attr_accessor :name, :cards

	def initialize(n)
		@name = n
		@cards = []
	end

end


class Dealer 
	include Hand

	attr_accessor :name, :cards

	def initialize 
		@name = "Dealer"
		@cards = []
	end
end


deck = Deck.new
player = Player.new("Chris")
player.add_card(deck.deal)
player.add_card(deck.deal)
player.show_hand

dealer = Dealer.new
dealer.add_card(deck.deal)
dealer.add_card(deck.deal)
dealer.show_hand

# OR
# game = Blackjack.new 
# game.run 
