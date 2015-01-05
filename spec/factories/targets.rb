FactoryGirl.define do
  factory :pinger_target do
    user :pinger_user
    url "http://pinger.com"
  end

  factory :user_target do
    user :user
    url Faker::Internet.url
  end

  factory :user_target_2 do
    user :user
    url Faker::Internet.url
  end
end
