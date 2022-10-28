FactoryBot.define do
  factory :comment do
    content { Faker::Lorem.sentence }
    user_id { Faker::Number.between(from: 2, to: 4) }
    association :user
  end
end
