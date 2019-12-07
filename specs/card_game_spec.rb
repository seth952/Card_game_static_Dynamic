require( 'minitest/autorun' )
require( 'minitest/rg' )
require_relative( '../card_game.rb' )
require_relative( '../card.rb' )

class CardGameTest < MiniTest::Test


  def setup
    @card1 = Card.new('Clubs', 1)
    @card2 = Card.new('Hearts', 9)
    @card3 = Card.new('spades', 4)
    @cards = [@card1, @card2, @card3]

  end

  def test_check_for_ace_1()
    assert_equal(true, CardGame.check_for_ace(@card1))

  end

  def test_highest_card()
    result = CardGame.highest_card(@card1, @card2)
    assert_equal(@card2, result)
  end

  def test_cards_total()
    result = CardGame.cards_total(@cards)
    assert_equal("You have a total of:14", result)

  end



end
