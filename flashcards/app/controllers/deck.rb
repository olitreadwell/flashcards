get '/deck_manager' do
  @decks = Deck.where(user_id: session[:id])
  erb :deck_manager
end

post '/deck_manager' do
  Deck.create(title: params[:title], user_id: session[:id])
  redirect '/deck_manager'
end

delete '/deck_manager/:deck_id' do
	@deck = Deck.find(params[:deck_id])
	@deck.destroy
	redirect "/deck_manager"
end