require("minitest/autorun")
require("minitest/rg")
require_relative("../person")

class PersonTest < MiniTest::Test

  def setup()
    @person = Person.new("Bob", "28")
  end

  def test_get_person_name
    assert_equal("Bob", @person.name)
  end

end
