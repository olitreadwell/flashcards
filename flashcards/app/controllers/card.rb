get '/card_manager/:deck_id' do
  @cards = Card.where(deck_id: params[:deck_id])
  @deck = Deck.find(params[:deck_id])
  erb :card_manager
end

post '/card_manager/:deck_id' do
  # Card.create(question: params[:question],
  #             answer: params[:answer],
  #             deck_id: params[:deck_id]
  #             )
  # redirect "card_manager/#{params[:deck_id]}"

  @deck = Deck.find(params[:deck_id])
  @deck.cards << Card.new(question: params[:question],
                          answer: params[:answer],
                          deck_id: @deck.id)
  redirect "/card_manager/#{@deck.id}"

end
