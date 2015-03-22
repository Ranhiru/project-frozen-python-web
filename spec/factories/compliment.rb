FactoryGirl.define do
  factory :compliment do
    compliment_text { Faker::Lorem.sentence }
  end
end
