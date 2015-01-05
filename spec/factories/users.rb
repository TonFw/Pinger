FactoryGirl.define do
  factory :user, aliases: [:current_user] do
    name Faker::Name.name
    email Faker::Internet.email
    password 'example_user'
    password_confirmation 'example_user'
  end

  factory :pinger_user, class: User do
    name Faker::Name.name
    email Faker::Internet.email
    password 'example_ping'
    password_confirmation 'example_ping'
  end
end