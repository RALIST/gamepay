require 'net/http'
require 'nokogiri'
require 'open-uri'
require 'factory_bot'

FactoryBot.reload

lot_types = %w(coins accounts boosting coaching items other)

uri = 'https://funpay.ru/'
page = Nokogiri::HTML(URI.open(uri))
games = []
page.css('div.game-title:not(.hidden)').each do |node|
	game = Game.find_or_create_by!(name: node.text)
	10.times do
		FactoryBot.create :game_server, game: game
	end
  games << game
end

FactoryBot.create_list :user, 30 rescue nil

lot_types.each do |lot|
	LotType.create(name: lot)
end

1000.times do
	game = Game.all.sample
	game_server = game.game_servers.sample
  FactoryBot.create :lot, user: User.all.sample, game: game, game_server: game_server, lot_type: LotType.all.sample
end
