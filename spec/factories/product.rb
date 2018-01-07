FactoryGirl.define do
  factory :product do
    title { Faker::Lorem.characters(5) }
    image_url { Faker::Lorem.characters(50) }
    description { Faker::Lorem.characters(10) }
    price 10
  end
end