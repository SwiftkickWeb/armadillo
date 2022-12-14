FactoryBot.define do

  factory(:web_property) do
    name { Faker::Internet.domain_name }
    url { Faker::Internet.url }
  end

  factory(:contact) do
    name { Faker::Internet.domain_name }
    street { Faker::Address.street_address }
    secondary_address { Faker::Address.secondary_address }
    city { Faker::Address.city }
    zip { Faker::Address.zip }
    state { Faker::Address.state }
    country { Faker::Address.country }
  end

  factory(:client) do
    name { Faker::Company.name }
    address { Faker::Address.full_address }

    factory :client_with_properties do
      after :create do |client|
        create_list :web_property, 3, client: client
      end
    end
    factory :client_with_contacts do
      after :create do |client|
        create_list :contact, 3, clients: [client]
      end
    end
  end
end
