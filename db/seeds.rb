require 'net/http'
require 'nokogiri'
require 'open-uri'

uri = URI.parse('https://funpay.ru/')
page = Nokogiri::HTML(open(uri))
page.css('div.game-title:not(.hidden)').each do |node|
  Game.create!(name: node.text)
end
