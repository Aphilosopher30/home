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

  def test_it_can_add_a_unit_and_update_renter_list
    apartment_info = {  number: "A1",
                        monthly_rent: 1200,
                        bathrooms: 1,
                        bedrooms: 1}
    unit1 = Apartment.new(apartment_info)

    apartment_info2 = {  number: "B2",
                        monthly_rent: 999,
                        bathrooms: 2,
                        bedrooms: 2}
    unit2 = Apartment.new(apartment_info2)

    building = Building.new
    building.add_unit(unit1)
    building.add_unit(unit2)

    room_list = [unit1, unit2]

    assert_equal room_list, building.units
  end

  def test_it_can_update_renter_list
    apartment_info = {  number: "A1",
                        monthly_rent: 1200,
                        bathrooms: 1,
                        bedrooms: 1}
    unit1 = Apartment.new(apartment_info)

    apartment_info2 = {  number: "B2",
                        monthly_rent: 999,
                        bathrooms: 2,
                        bedrooms: 2}
    unit2 = Apartment.new(apartment_info2)

    building = Building.new
    building.add_unit(unit1)
    building.add_unit(unit2)

    jessie = Renter.new("Jessie")
    tim = Renter.new("Tim")

    unit1.add_renter(jessie)
    unit2.add_renter(tim)

    renter_list = ["Jessie", "Tim"]

    assert_equal renter_list, building.renters
  end

    def test_average_rent
      apartment_info = {  number: "A1",
                          monthly_rent: 1200,
                          bathrooms: 1,
                          bedrooms: 1}
      unit1 = Apartment.new(apartment_info)

      apartment_info2 = {  number: "B2",
                          monthly_rent: 999,
                          bathrooms: 2,
                          bedrooms: 2}
      unit2 = Apartment.new(apartment_info2)

      building = Building.new
      building.add_unit(unit1)
      building.add_unit(unit2)

      jessie = Renter.new("Jessie")
      tim = Renter.new("Tim")

      unit1.add_renter(jessie)
      unit2.add_renter(tim)

      renter_list = ["Jessie", "Tim"]

      assert_equal 1099.5, building.average_rent
    end




end
