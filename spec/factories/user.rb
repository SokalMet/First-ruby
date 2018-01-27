FactoryGirl.define do
  factory :user do
    email 'sokalmet2018@gmail.com'
    password "1#{Faker::Lorem.characters(7)}"
    confirmed_at 7.days.ago
  end
end