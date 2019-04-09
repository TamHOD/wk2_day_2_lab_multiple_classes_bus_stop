

class BusStop

  attr_reader :name
  attr_accessor :queue

  def initialize(name)
    @name = name
    @queue = []
  end

  def add_person(name)
    @queue.push(name)
  end


end
