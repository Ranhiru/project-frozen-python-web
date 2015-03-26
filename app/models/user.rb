class User < ActiveRecord::Base
  has_many :compliments
  has_many :labels
  has_many :comments
  has_many :likes

  validates :username, :email_address, :profile_pic_url, presence: true
  validates_length_of :username, minimum: 3

  def self.from_omniauth(auth)
    where(auth.slice(provider: auth.provider, uid: auth.uid)).first_or_initialize.tap do |user|
      if user.new_record?
        user.provider = auth.provider
        user.uid = auth.uid
        user.username = generate_random_username()
        user.email_address = auth.info.email
        user.profile_pic_url = auth.info.image
        user.oauth_token = auth.credentials.token
        user.oauth_expires_at = Time.at(auth.credentials.expires_at)
        user.save!
      end
    end
  end

  def self.generate_random_username
    charset = (0..9).to_a
    id = (0...9).map{ charset.to_a[rand(charset.size)] }.join
    "user-" + id
  end
end
