FactoryGirl.define do
  factory :pinger_target_schedule_ping do
    http_code 200
    scheduled :pinger_target_schedule
    target :pinger_target
  end

  factory :pinger_target_2_schedule_ping do
    http_code 401
    scheduled :pinger_target_2_schedule
    target :pinger_target_2
  end

  factory :other_target_schedule_ping do
    http_code 500
    scheduled :other_target_schedule
    target :other_target
  end
end
