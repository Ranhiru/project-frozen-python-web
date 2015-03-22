FactoryGirl.define do
  factory :user do
    username  Faker::Internet.user_name
    email_address Faker::Internet.safe_email
    profile_pic_url Faker::Avatar.image(Faker::Internet.slug)
  end
end
