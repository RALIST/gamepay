FactoryBot.define do
  factory :game do
    name { Faker::Game.title }
    description { Faker::Game.genre }
  end
end
