class Citizen < ApplicationRecord
  has_many :comments
  has_many :votes
  has_many :regulations, through: :followers

  belongs_to :account
end
