get '/round/:id' do
  @round = Round.find(params[:id])
  @card = @round.get_card
  erb :'/rounds/show'
end

post '/guesses' do
 "missing route"

# PSEUDOCODE GAME LOGIC AFTER USER GUESS:
#  if correct, send success true query params,
#   if incorrect, send success false param with correct answer included
#     redirect to /round/:id with query params
#     modify get route to look for these params and pass them to the view

end
