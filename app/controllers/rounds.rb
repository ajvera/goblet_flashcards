post '/rounds' do
	@round = Round.create(deck_id: params[:id])
	erb :rounds
end

get '/round/:id' do
  @round = Round.find(params[:id])
  @card = @round.get_card
  erb :'/rounds/show'
end

# Problem: @previous_question_feedback is NOT accessible after redirect!!!
post '/guesses' do
 @round = Round.find_by(id: params[:round_id])
 @card = Card.find_by(id: params[:card_id])
 
 # if the answer is correct and this is NOT the first guess on that card...
 if @card.answer == params[:answer] && @round.guesses.where(first_guess: false).any?
 	@previous_question_feedback = "Correct!"
 	Guess.create(round_id: @round.id, card_id: @card.id, correct: true, first_guess: false)
 
 # if the answer is correct and this is the first guess on that card...
 elsif @card.answer == params[:answer]
 	@previous_question_feedback = "Correct! And on your first try!!!"
 	Guess.create(round_id: @round.id, card_id: @card.id, correct: true, first_guess: true)
 
 # if the answer is incorrect... 
 else
 	@previous_question_feedback = "Wrong! The correct answer was: #{@card.answer}"
 	Guess.create(round_id: @round.id, card_id: @card.id, correct: false, first_guess: false)
 end

# PSEUDOCODE GAME LOGIC AFTER USER GUESS:
#  if correct, send success true query params,
#   if incorrect, send success false param with correct answer included
#     redirect to /round/:id with query params
#     modify get route to look for these params and pass them to the view
	redirect "/round/#{@round.id}"
end
