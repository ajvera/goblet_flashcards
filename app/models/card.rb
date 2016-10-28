class Card < ActiveRecord::Base
	belongs_to :deck
	has_many :guesses
	has_many :rounds, through: :guesses

	validates :question, null: false, uniqueness: { scope: :deck }
	validates :answer, null: false
	validates :deck_id, null: false
end