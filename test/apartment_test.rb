require 'minitest/autorun'
require 'minitest/pride'
require './lib/apartment'
require './lib/renter'

class ApartmentTest < Minitest::Test

  def test_it_exists

    apartment_info = {  number: "A1",
                        monthly_rent: 1200,
                        bathrooms: 1,
                        bedrooms: 1}

    apartment = Apartment.new(apartment_info)

    assert_instance_of Apartment, apartment
  end

  def test_it_has_readable_atributes
    apartment_info = {  number: "A1",
                        monthly_rent: 1200,
                        bathrooms: 1,
                        bedrooms: 1}
    unit1 = Apartment.new(apartment_info)

    assert_equal "A1", unit1.number
    assert_equal 1200, unit1.monthly_rent
    assert_equal 1, unit1.bathrooms
    assert_equal 1, unit1.bedrooms
    assert_nil nil, unit1.renter
  end

  def test_add_renter
    jessie = Renter.new("Jessie")

    apartment_info = {  number: "A1",
                        monthly_rent: 1200,
                        bathrooms: 1,
                        bedrooms: 1}
    unit1 = Apartment.new(apartment_info)
    unit1.add_renter(jessie)

    assert_equal jessie, unit1.renter
  end




end
