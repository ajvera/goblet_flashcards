post '/rounds' do
	@round = Round.create(deck_id: params[:id])
	erb :rounds
end

get '/round/:id' do
  @round = Round.find(params[:id])
  @card = @round.get_card
  erb :'/rounds/show'
end

post '/guesses' do

end
