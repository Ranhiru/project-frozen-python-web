FactoryGirl.define do
  factory :label do
    label_title { Faker::Lorem.characters(10) }
    user
  end
end
