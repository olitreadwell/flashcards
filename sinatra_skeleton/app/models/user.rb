class User < ActiveRecord::Base
  #has_many :decks #as Author alias
  has_many :rounds
end
