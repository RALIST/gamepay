FactoryBot.define do
  factory :lot do
    association :user
    association :game
    name { Faker::Hipster.sentence }
    description { Faker::Hipster.paragraph }
    price { rand(100) }
  end
end
