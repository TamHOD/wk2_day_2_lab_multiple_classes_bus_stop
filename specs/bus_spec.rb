require("minitest/autorun")
require("minitest/rg")
require_relative("../bus")
require_relative("../person")


class BusTest < MiniTest::Test

  def setup()
    @passenger1 = Person.new("Bob", "28")
    @passenger1 = Person.new("Bill", "29")
    @bus = Bus.new("39", "Gorgie")
  end

  def test_get_route
    assert_equal("39", @bus.route)
  end

  def test_get_destination
    assert_equal("Gorgie", @bus.destination)
  end

  def test_drive
    assert_equal("Brum, brum", @bus.drive)
  end

  def test_passenger_count
    assert_equal(0, @bus.passenger_count)
  end

  def test_passenger_pickup
    @bus.pickup([@passenger1])
    assert_equal(1, @bus.passenger_count)
  end

  def test_passenger_dropoff
    @bus.pickup([@passenger1])
    @bus.dropoff(@passenger1)
    assert_equal(0, @bus.passenger_count)
  end

  def test_empty_bus
    @bus.pickup([@passenger1, @passenger2])
    @bus.empty_bus
    assert_equal(0, @bus.passenger_count)
  end

end
