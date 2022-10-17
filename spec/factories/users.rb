FactoryBot.define do
  factory :user do
    transient do
      person { Gimei.name }
    end
    name                  { person.kanji }
    email                 { Faker::Internet.free_email }
    password              { '1a' + Faker::Internet.password(min_length: 6) }
    password_confirmation { password }
    position              { Faker::Company.name }
    account_type_id       { Faker::Number.between(from: 2, to: 3) }
  end
end
