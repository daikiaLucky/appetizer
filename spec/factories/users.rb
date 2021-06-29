FactoryBot.define do
  factory :user do
    nickname { Faker::Name.name }
    email { Faker::Internet.free_email }
    password { Faker::Lorem.characters(number: 6, min_alpha: 1, min_numeric: 1) }
    password_confirmation { password }
    age_id { Faker::Number.between(from: 2, to: 19) }
    gender_id { Faker::Number.between(from: 2, to: 4) }
    favorite_liquor_id { Faker::Number.between(from: 2, to: 15) }
  end
end
