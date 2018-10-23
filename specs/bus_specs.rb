require('minitest/autorun')
require('minitest/rg')
require_relative('../bus')
require_relative('../person')
require_relative('../bus_stop')

class BusTest < MiniTest::Test

  def setup
    @passenger_bob = Person.new("Bob", 99)
    @passenger_bill = Person.new("Bill", 82)

    queue = [@passenger_bob, @passenger_bill]

    @bus1 = Bus.new(22, "Ocean Terminal")

    @bus_stop = BusStop.new("Omni Centre", queue)


  end

  def test_has_route
    assert_equal(22, @bus1.route_number)
  end

  def test_bus_can_drive
    expected = "Brum brum"
    actual = @bus1.drive()
    assert_equal(expected, actual)
  end

  def test_number_of_passengers
    expected = 0
    actual = @bus1.passengers.count
    assert_equal(expected, actual)
  end

  def test_check_passengers
    assert_equal(0, @bus1.passengers.count)

    @bus1.pick_up(@passenger_bob)

    assert_equal(1, @bus1.passengers.count)
    # assert_equal(@passenger_bob, @bus1.passengers[0])

  end

  def test_remove_passenger

    @bus1.pick_up(@passenger_bob)

    assert_equal(1, @bus1.passengers.count)

    @bus1.drop_off(@passenger_bob)

    assert_equal(0, @bus1.passengers.count)
  end


  def test_all_passengers_removed
    @bus1.pick_up(@passenger_bob)
    @bus1.pick_up(@passenger_bill)

    assert_equal(2, @bus1.passengers.count)

    @bus1.empty_bus

    assert_equal(0, @bus1.passengers.count)
  end

  def test_passengers_collected_from_bus_stop
    assert_equal(0, @bus1.passengers.count)
    assert_equal(2, @bus_stop.queue.count)

    @bus1.collect_from_bus_stop("Omni Centre")

    assert_equal(2, @bus1.passengers.count)
    assert_equal(0, @bus_stop.queue.count)
  end

end
