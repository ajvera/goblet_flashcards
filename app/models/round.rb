class Round < ActiveRecord::Base
  belongs_to :deck
  has_many :guesses

# grab a random card that has not been guessed correctly!
  def get_card
    all_cards = self.deck.cards
    correct_cards = self.guesses.where(correct: true).map{ |guess| guess.card }
    (all_cards - correct_cards).sample
  end


  def num_correct_first_guesses
  	correct_guesses = self.guesses.select do |guess|
  		guess.correct == true && guess.first_guess == true
  	end
  	correct_guesses.count
  end
  
end
