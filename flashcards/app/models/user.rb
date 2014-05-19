class User < ActiveRecord::Base

	validates :username, uniqueness: true, presence: true

  has_many :decks #author
  has_many :rounds

  include BCrypt

  def self.authenticate(username, password)
    @user = User.find_by_username(username)
    if @user && @user.password == password
      return @user
    else
      return nil
    end
  end

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end
end
