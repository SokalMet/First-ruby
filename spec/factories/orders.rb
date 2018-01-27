FactoryGirl.define do
  factory :order do
    name { Faker::Name.first_name }
    address { Faker::Lorem.characters(5) }
    email "sokalshop@cloverpop.com"
    pay_type "creditcard"
  end
end
