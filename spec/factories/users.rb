FactoryGirl.define do
  factory :user do
    name 'Pinger'
    email 'ping@pinger.com'
    password 'example'
    password_confirmation 'example'
  end
end