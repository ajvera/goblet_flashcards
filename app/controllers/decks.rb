get '/decks' do
	@decks = Deck.all
	erb :decks
end

post '/rounds' do
	p params
	@round = Round.create(deck_id: params[:id])
	erb :rounds
end
