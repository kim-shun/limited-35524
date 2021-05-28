FactoryBot.define do
  factory :question do
    philosophy_id { Faker::Number.between(from: 2, to: 7) }
    color_id { Faker::Number.between(from: 2, to: 12) }
    my_type_id { Faker::Number.between(from: 2, to: 8) }
    like_type_id { Faker::Number.between(from: 2, to: 9) }
    prefecture_id { Faker::Number.between(from: 2, to: 48) }
    food_id { Faker::Number.between(from: 2, to: 14) }
    hobby_id { Faker::Number.between(from: 2, to: 15) }
    music_id { Faker::Number.between(from: 2, to: 16) }
    angry_id { Faker::Number.between(from: 2, to: 12) }
    improve_id { Faker::Number.between(from: 2, to: 18) }
    text {Faker::Lorem.sentence}
    association :user
  end
end