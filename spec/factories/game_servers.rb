FactoryBot.define do
  factory :game_server do
	  association :game
	  name { Faker::Game.title}
	  tag { %w(RU EU|NA Free).sample }
  end
end
