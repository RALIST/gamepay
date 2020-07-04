require 'net/http'
require 'nokogiri'
require 'open-uri'

lot_types = %w(coins accounts boosting coaching items other)

uri = URI.parse('https://funpay.ru/')
page = Nokogiri::HTML(open(uri))
games = []
page.css('div.game-title:not(.hidden)').each do |node|
	game = Game.find_or_create_by!(name: node.text)
	FactoryBot.create :game_server, game: game
  games << game
end

FactoryBot.create_list :user, 10 rescue nil

lot_types.each do |lot|
	LotType.create(name: lot)
end

1000.times do
	game = Game.all.sample
	game_server = game.game_servers.sample
  FactoryBot.create :lot, user: User.all.sample, game: game, game_server: game_server, lot_type: LotType.all.sample
end


