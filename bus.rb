class Bus

  attr_reader :route, :destination, :passengers

  def initialize(route, destination)
    @route = route
    @destination = destination
    @passengers = []
  end

  def drive
    return "Brum, brum"
  end

  def passenger_count
    @passengers.length
  end

  def pickup(passenger)
    @passengers += passenger
  end

  def dropoff(passenger)
    @passengers.delete(passenger)
  end

  def empty_bus
    @passengers = []
  end

  def pickup_all(stop)
    @passengers += stop.queue
    stop.queue = []
  end

end
