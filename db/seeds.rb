# db/seeds.rb
require 'faker'

# クライアントを10人作成
10.times do
  Client.create!(name: Faker::Name.name)
end

# 各クライアントに対して、1から5の間でランダムな数のショップを作成
Client.all.each do |client|
  rand(1..5).times do
    Shop.create!(
      name: Faker::Company.name,
      address: Faker::Address.street_address,
      description: Faker::Lorem.paragraph,
      client: client
    )
  end
end
