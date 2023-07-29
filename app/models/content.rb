class Content < ApplicationRecord
  belongs_to :shop
  has_many :reserves
  has_many :users, through: :reserves
end
