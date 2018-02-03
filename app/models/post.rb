class Post < ActiveRecord::Base
  has_many :comments
  belongs_to :user
  has_many :post_comments, through: :comments, source: :users 
end
