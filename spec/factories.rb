FactoryBot.define do
  factory(:client) do
    name { Faker::Company.name }
    address { Faker::Address.full_address }
  end
end
