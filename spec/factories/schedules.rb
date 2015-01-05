FactoryGirl.define do
  factory :pinger_target_schedule do
    hour 10
    target :pinger_target
  end

  factory :pinger_target_2_schedule do
    hour 14
    target :pinger_target_2
  end

  factory :other_target_schedule do
    hour 14
    target :other_target
  end
end
