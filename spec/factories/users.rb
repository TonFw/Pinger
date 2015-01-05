FactoryGirl.define do
  factory :pinger_user, class: User do
    name 'Pinger'
    email 'ping@pinger.com'
    password 'example_ping'
    password_confirmation 'example_ping'
  end

  factory :user do
    name Faker::Name.name
    email Faker::Internet.email
    password 'example_user'
    password_confirmation 'example_user'
  end
end