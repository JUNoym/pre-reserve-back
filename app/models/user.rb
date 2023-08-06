class User < ApplicationRecord
    has_many :reserves
    has_many :contents, through: :reserves

    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: self
end
