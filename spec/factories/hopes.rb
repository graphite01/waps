FactoryBot.define do
  factory :hope do
    work_status_id { Faker::Number.between(from: 2, to: 4) }
    start_time { "209912301530" }
    end_time { "210012301530" }
    content { Faker::Lorem.sentence }
    association :user
  end
end