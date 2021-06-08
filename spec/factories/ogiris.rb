FactoryBot.define do
  factory :ogiri do
    first_text_id { Faker::Number.between(from: 2, to: 16) }
    second_text_id { Faker::Number.between(from: 2, to: 17) }
    text {Faker::Lorem.sentence}
    association :user
  end
end
