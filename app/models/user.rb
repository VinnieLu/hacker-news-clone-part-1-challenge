
class User < ActiveRecord::Base
  has_many :posts
  has_many :comments
  has_many :post_comments, through: :comments, source: :posts

  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end
end
