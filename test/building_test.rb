require 'minitest/autorun'
require 'minitest/pride'
require './lib/building'
require './lib/apartment'
require './lib/renter'

class BuildingTest < Minitest::Test

  def test_it_exists
    building = Building.new

    assert_instance_of Building, building
  end

  def test_it_has_readable_atributes
    building = Building.new

    assert_equal [], building.units
    assert_equal [], building.renters
  end

end
