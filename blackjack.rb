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
		"This is the card! #{suit}, #{value}"
	end
end

class Deck

end

class Player

end

class Dealer 

end
