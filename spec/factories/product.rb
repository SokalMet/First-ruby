FactoryGirl.define do
  factory :product do
    title { Faker::Lorem.characters(8) }
    image_url { Faker::Lorem.characters(30) + '.jpg' }
    thumbnail { Faker::Lorem.characters(10) + '.jpg' }
    description { Faker::Lorem.characters(15) }
    price 10
  end
end