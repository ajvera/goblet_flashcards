class Guess < ActiveRecord::Base
	belongs_to :card
	belongs_to :round
	# validates_presence_of :round, :card, :correct, :first_guess


	def right_first_time?
		self.correct && self.first_guess
	end
	
end
