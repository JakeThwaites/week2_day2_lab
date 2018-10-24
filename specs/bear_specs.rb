require('minitest/autorun')
require('minitest/rg')
require_relative('../fish')
require_relative('../river')
require_relative('../bear')

class FishTest < MiniTest::Test

  def setup
    @wanda = Fish.new("Wanda")
    @nemo = Fish.new("Nemo")
    fishes = [@wanda, @nemo]

    @amazon = River.new("Amazon", fishes)

    @paddington = Bear.new("Paddington")
  end

  def test_bear_has_a_name
    expected = "Paddington"
    actual = @paddington.name
    assert_equal(expected, actual)
  end

  def test_bear_has_empty_stomach
    expected = true
    actual = @paddington.empty_stomach
    assert_equal(expected, actual)
  end

  # def test_eating_fish__fish_has_been_eaten
  #   fishes_before_eating = @amazon.fishes.count
  #   assert_equal(2, fish_before_eating)
  #
  #   stomach_emptiness_before = @paddington.empty_stomach
  #   assert_equal(true, stomach_emptiness_before)
  #
  #   @paddington.eat_fish(@amazon)
  #
  #    fishes_after_eating = @amazon.fishes.count
  #    assert_equal(1, fish_after_eating)
  #
  #    stomach_emptiness_after = @paddington.empty_stomach
  #    assert_equal(false, stomach_emptiness_after)
  # end


  def test_eating_fish__return_statment
    # fishes_before_eating = @amazon.fishes.count
    # assert_equal(2, fish_before_eating)
    #
    # stomach_emptiness_before = @paddington.empty_stomach
    # assert_equal(true, stomach_emptiness_before)
    #
    # @paddington.eat_fish(@amazon)

    expected = ( "Oh no, #{fish_to_be_eaten} was eaten!" || "#{@bear.name} was too slow! The fish escaped!")
    actual = @paddington.eat_fish(@amazon)
    assert_equal(expected, actual)
  end

  def test_roar
    expected = "ROAR!! Wow, that was so scary!"
    actual = @paddington.roar
    assert_equal(expected, actual)

    assert_equal()
  end

  def test_count_bear_food
    total_food = @paddington.count_food
    assert_equal(0, total_food)
  end

end
