get '/' do
	@user = User.find_by_id(session[:id])
	@decks = Deck.all
  erb :index
end
