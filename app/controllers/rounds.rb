get '/round/:id' do
  @round = Round.find(params[:id])
  @card = @round.get_card
  erb :'/rounds/show'
end

post '/guesses' do

end
