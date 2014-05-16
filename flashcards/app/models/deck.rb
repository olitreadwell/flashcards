class Deck < ActiveRecord::Base
  # belongs_to :author
  has_many :rounds
  has_many :cards
end
