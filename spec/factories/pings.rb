FactoryGirl.define do
  factory :ping do
    http_code random_http_code
  end
end