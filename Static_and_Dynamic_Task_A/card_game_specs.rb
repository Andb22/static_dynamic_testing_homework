require('Minitest/autorun')
require('Minitest/reporters')
require_relative('card_game')
require_relative('card')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new


class TestCardGame < Minitest::Test

def setup ()
  @card1 = Card.new('Hearts',10)
  @card2 = Card.new('Spades',6)
  @card3 = Card.new('Clubs',1)
  @cardgame1 = CardGame.new()
  @cardgame2 = CardGame.new()
  @cards = [@card1, @card2]
end

def test_checkforace_false()
assert_equal(false, @cardgame1.checkforace(@card2))
end

def test_checkforace_true()
assert_equal(true, @cardgame2.checkforace(@card3))
end

def test_highest_card_card2()
assert_equal(@card1, @cardgame2.highest_card(@card3, @card1))
end

def test_highest_card_card1()
assert_equal(@card2, @cardgame2.highest_card(@card2, @card3))
end

def test_cards_total()
assert_equal("You have a total of 16", CardGame.cards_total(@cards))
end


end
