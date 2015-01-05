FactoryGirl.define do
  factory :pinger_target_schedule do
    hour 10
    target :pinger_target
  end

  factory :user_target_schedule do
    hour 14
    target :user_target
  end

  factory :user_target_2_schedule do
    hour 14
    target :user_target_2
  end
end
