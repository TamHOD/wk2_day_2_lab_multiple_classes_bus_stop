

class BusStop

  attr_reader :name, :queue

  def initialize(name)
    @name = name
    @queue = []
  end

  def add_person(name)
    @queue.push(name)
  end

  def pickup_all(bus, stop)
    bus.pickup(@queue)
    @queue = []
  end

end
