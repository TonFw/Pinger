FactoryGirl.define do
  factory :pinger_target do
    url "http://pinger.com"
    user :pinger_user
  end

  factory :pinger_target_2 do
    url "http://pinger2.com"
    user :pinger_user
  end

  factory :other_target do
    url "http://other.com"
    user :other_user
  end
end
