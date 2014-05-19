class Round < ActiveRecord::Base
  has_many :guesses
  belongs_to :deck
  belongs_to :user #player alias here when add authors.

  def finished_deck?
  	self.deal_card == nil
  end

  def deal_card
  	available_cards = []

  	self.deck.cards.each do |card|
  		if card.guesses.where(round_id: self.id).empty?
  			available_cards << card
  		end
  	end
  	available_cards.shuffle.pop
  end


end
