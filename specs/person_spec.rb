require('minitest/autorun')
require('minitest/rg')
require_relative('../person')

class PersonTest < MiniTest::Test

  def setup
    @person1 = Person.new("Jake", 26)
    @person2 = Person.new("Christina", 18)
  end

  def test_person_has_name
    expected = "Jake"
    actual = @person1.name
    assert_equal(expected, actual)
  end
end
