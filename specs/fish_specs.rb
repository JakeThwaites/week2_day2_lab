require('minitest/autorun')
require('minitest/rg')
require_relative('../fish')

class FishTest < MiniTest::Test


  def setup
    @wanda = Fish.new("Wanda")
  end

  def test_fish_has_name
    expected = "Wanda"
    actual = @wanda.name
    assert_equal(expected, actual)
  end
end
