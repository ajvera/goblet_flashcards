class Round < ActiveRecord::Base
  belongs_to :deck

# grab a random card that has not been guessed correctly!
  def get_card
    deck = []
    self.guesses.each do |guess|
      deck << guess.card unless guess.correct
    end
    deck[rand(deck.length)]
  end
end
