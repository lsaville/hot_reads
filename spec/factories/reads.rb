FactoryGirl.define do
  factory :read do
    url { Faker::Internet.url }
  end
end
