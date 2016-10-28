class Round < ActiveRecord::Base
  belongs_to :deck
  has_many :guesses

# grab a random card that has not been guessed correctly!
  def get_card
    all_cards = self.deck.cards
    correct_cards = self.guesses.where(correct: true).pluck(card.id)
    (all_cards - correct_cards).sample
  end
  
end
