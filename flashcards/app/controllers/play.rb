
get '/play/:deck_id' do
  @deck = Deck.find(params[:deck_id])
  @cards = @deck.cards
  @round =  Round.create(deck_id: params[:deck_id],
                      user_id: session['id'])
  @dealt_card = @round.deal_card
  erb :play
end

post '/play' do
  @deck = Deck.find(params[:deck_id])
  @cards = @deck.cards
  @round = Round.find(params[:round_id])
  @round_id = params[:round_id]

  current_card = Card.find(params[:card_id])

  correct = (current_card.answer == params[:user_guess])

  Guess.create(card_id: params[:card_id],
               round_id: @round_id,
               correct: correct,
               user_guess: params[:user_guess])

  redirect "/current_game/#{@round_id}"
end

get '/current_game/:round_id' do
  @round = Round.find(params[:round_id])
  @deck = @round.deck
  if @round.finished_deck?
    redirect to "/results/#{@round.id}"
  else
    @dealt_card = @round.deal_card
    erb :play
  end
end

get '/results/:round_id' do
  @round = Round.find(params[:round_id])
  @deck = Deck.find(@round.deck_id)
  @cards_played = @round.guesses.count
  @cards_correct = @round.guesses.where(correct: true).count
  @percent_correct = (@cards_correct.to_f / @cards_played) * 100

  erb :results
end
