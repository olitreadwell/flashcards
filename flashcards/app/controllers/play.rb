
get '/play/:deck_id' do
  @deck = Deck.find(params[:deck_id])
  @cards = @deck.cards
  @round =  Round.create(deck_id: params[:deck_id],
                      user_id: session['id'])
  erb :play
end

post '/play' do
  # @card_array = params[:card_array]
  @deck = Deck.find(params[:deck_id])
  @cards = @deck.cards
  @round = Round.find(params[:round_id])
  @round_id = params[:round_id]

  current_card = Card.find(params[:card_id])

  correct = (current_card.answer == params[:user_guess])

  Guess.create(card_id: params[:card_id],
               round_id: @round_id,
               correct: correct)

  erb :play
  # redirects "/play/#{@deck.id}"
end
