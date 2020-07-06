module SeoHelper
  def seo_text_for_game(game, type = nil, tag = nil)
    case type
    when 'all'
      "Buy #{game.name} goods with lowest price from high trusted sellers."
    else
      "Buy #{game.name} #{type} with lowest price from high trusted sellers."
    end
  end
end
