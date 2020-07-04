require 'net/http'
require 'nokogiri'
require 'open-uri'

uri = URI.parse('https://funpay.ru/')
page = Nokogiri::HTML(open(uri))
games = []
page.css('div.game-title:not(.hidden)').each do |node|
  games << Game.create!(name: node.text) rescue next
end

FactoryBot.create_list :user, 10 rescue nil

100.times do
  FactoryBot.create :lot, user: User.all.sample, game: Game.all.sample
end


