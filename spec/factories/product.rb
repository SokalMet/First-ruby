# Use https://semaphoreci.com/community/tutorials/working-effectively-with-data-factories-using-factorygirl
# and https://everydayrails.com/2012/04/07/testing-series-rspec-controllers.html

FactoryGirl.define do
  factory :product do
    title { Faker::Lorem.characters(8) }
    image_url { Faker::Lorem.characters(30) + '.jpg' }
    thumbnail { Faker::Lorem.characters(10) + '.jpg' }
    description { Faker::Lorem.characters(15) }
    price 10

    factory :invalid_product do
      title 'Ti'
      description ''
    end
  end
end
