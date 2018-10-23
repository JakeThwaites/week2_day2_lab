class Bus

  attr_reader :route_number, :destination
  attr_accessor :passengers

  def initialize(route_number, destination)
    @route_number = route_number
    @destination = destination
    @passengers = []
  end

  def drive()
    return "Brum brum"
  end

  def pick_up(passenger)
    @passengers << passenger
  end

  def drop_off(passenger)
    @passengers.delete(passenger)
  end

  def empty_bus()
    @passengers.clear
  end

  def collect_from_bus_stop(name)
    for @queue in @bus_stop.name
      @passengers.push(@queue)
    end
  end

end
