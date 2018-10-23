require('minitest/autorun')
require('minitest/rg')
require_relative('../bus_stop')
require_relative('../person')
require_relative('../bus')

class BusStopTest < MiniTest::Test

  def setup

    @jake = Person.new("Jake", 26)
    @christina = Person.new("Christina", 19)
    @john = Person.new("John Lennon", 76)

    queue = [@jake, @christina, @john]

    @bus_stop = BusStop.new("Omni Centre", queue)
  end

  def test_bus_stop_has_name
    expected = "Omni Centre"
    actual = @bus_stop.name
    assert_equal(expected, actual)
  end


  def test_number_of_people_in_queue
    # @bus_stop.add_to_queue(@jake)
    # @bus_stop.add_to_queue(@christina)
    # @bus_stop.add_to_queue(@john)
    #
    expected = 3
    actual = @bus_stop.queue.count
    assert_equal(expected, actual)
  end

  
end
