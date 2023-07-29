class Client < ApplicationRecord
    has_many :shops
end


# @client = Client.find(1)
# @shops = @client.shops
