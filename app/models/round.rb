class Round < ActiveRecord::Base
  belongs_to :deck

  def get_card
    random_num = self.deck.cards.length - 1
    self.deck.cards.find(random_num)
  end

end
