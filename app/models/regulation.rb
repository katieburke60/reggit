class Regulation < ApplicationRecord
  has_many :comments
  has_many :votes
  has_many :users, through: :followers
  has_many :users, through: :comments
  belongs_to :category

end
