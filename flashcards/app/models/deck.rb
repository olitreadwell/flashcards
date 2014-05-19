class Deck < ActiveRecord::Base
  validates :title, presence: true

  belongs_to :user #author
  has_many :rounds
  has_many :cards
end
