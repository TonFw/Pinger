FactoryGirl.define do
  factory :pinger_user do
    name 'Pinger'
    email 'ping@pinger.com'
    password 'example_ping'
    password_confirmation 'example_ping'
  end

  factory :other_user do
    name 'Other'
    email 'other@other.com'
    password 'example_other'
    password_confirmation 'example_other'
  end
end