class User < ApplicationRecord
    has_many :reserves
    has_many :contents, through: :reserves
end
