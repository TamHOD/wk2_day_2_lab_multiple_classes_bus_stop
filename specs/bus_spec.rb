require("minitest/autorun")
require("minitest/rg")
require_relative("../bus")

class BusTest < MiniTest::Test

  def setup()
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

end
