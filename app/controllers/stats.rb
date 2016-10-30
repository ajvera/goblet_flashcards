get '/round/:r_id/stats' do
	@round = Round.find_by(id: params[:r_id])
	if @round.game_over?
		erb :'stats/show'
	else
		redirect "/round/#{params[:r_id]}"
	end
end