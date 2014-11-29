# 1. Have detailed requirements or specifications in writtern form.
# 2. Extract major nouns -> classes
# 3. Extract major verbs -> instance methods
# 4. Group instance methods into classes 

class Card 
	attr_accessor :suit, :value

	def initialize(s, v)
		@suit = s 
		@value = v
	end

	def to_s
		"This is the card! #{suit}, #{find_suit}"
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
		@cards = @cards * num_decks
		scramble!
	end

	def scramble!
		cards.shuffle!
	end

	def deal 
		cards.pop
	end
end



class Player

end


class Dealer 

end

class Hand
end


class Blackjack
	attr_accessor :player, :dealer, :deck

	def initialize
		@player = Player.new("Bob")
		@dealer = Dealer.new("Dealer")
		@deck = Deck.new
	end

	def show_flop
		cards each do |card| 
			puts "the #{@value} of #{@suit}"
		end
	end

	def run 
		deal_cards
		show_flop
		players.each do |player|
			player_turn(player)
		end
		player_turn
		dealer_turn
		who_won?
	end
end

Blackjack.new.run 

# OR
# game = Blackjack.new 
# game.run 
