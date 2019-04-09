require("minitest/autorun")
require("minitest/rg")
require_relative("../bus_stop")
require_relative("../person")
require_relative("../bus")


class BusStopTest < MiniTest::Test


  def setup
    @bob = Person.new("Bob", "28")
    @bill = Person.new("Bill", "33")
    @barbara = Person.new("Barbara", "25")
    @brenda = Person.new("Brenda", "77")


    @bus33 = Bus.new("33", "Mayfield")

    @stop1 = BusStop.new("Dalkeith")
  end

  def test_get_stop_name
    assert_equal("Dalkeith", @stop1.name)
  end

  def test_add_person_to_queue
    @stop1.add_person(@bob)
    assert_equal(1, @stop1.queue.length)
  end

  def test_pickup_all_from_stop
    @stop1.add_person(@bob)
    @stop1.add_person(@brenda)
    @stop1.add_person(@bill)
    @stop1.add_person(@barbara)
    @bus33.pickup_all(@stop1)
    assert_equal(0, @stop1.queue.length)
    assert_equal(4, @bus33.passengers.length)
  end

end
