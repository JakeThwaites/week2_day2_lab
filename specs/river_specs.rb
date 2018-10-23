require('minitest/autorun')
require('minitest/rg')
require_relative('../river')
require_relative('../fish')


class RiverTest < MiniTest::Test

  def setup
    @wanda = Fish.new("Wanda")
    @nemo = Fish.new("Nemo")

    fishes = [@wanda, @nemo]

    @amazon = River.new("Amazon", fishes)
  end

  def test_river_has_fishes
    expected = 2
    actual = @amazon.fishes.count
    assert_equal(expected, actual)
  end

  def test_count_fish
    expected = 2
    actual = @amazon.count_fish
    assert_equal(expected, actual)
  end
end
