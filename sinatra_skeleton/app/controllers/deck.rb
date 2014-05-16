get '/deck_manager' do
  @decks = Deck.all
  erb :deck_manager
end

post '/deck_manager' do
  Deck.create(title: params[:title])
  redirect '/deck_manager'
end
