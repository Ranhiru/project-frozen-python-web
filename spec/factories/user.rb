FactoryGirl.define do
  factory :user do
    username { Faker::Internet.user_name }
    email_address { Faker::Internet.safe_email }
    profile_pic_url { Faker::Avatar.image(Faker::Internet.slug) }

    transient do
      id { SecureRandom.random_number(1_000_000_000).to_s }
    end
  end

  trait :with_auth do
    uid { id }
    provider { "facebook" }
    oauth_token { Faker::Number.number(10) }
    oauth_expires_at { Faker::Date.between(10, 60) }
  end

end
