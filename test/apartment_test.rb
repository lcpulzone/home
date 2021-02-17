require 'minitest/autorun'
require 'minitest/pride'
require './lib/apartment'
require './lib/renter'

class ApartmentTest < Minitest::Test

  def test_it_exists
    # skip
    apartment = Apartment.new({number: "", monthly_rent: 0, bathrooms: 0, bedrooms: 0})
    assert_instance_of Apartment, apartment
  end

  def test_it_has_a_renter
    # skip
    apartment = Apartment.new({number: "", monthly_rent: 0, bathrooms: 0, bedrooms: 1})
    renter1 = Renter.new("Jessie")
    assert_equal "Jessie", renter1.name
  end

  def test_it_has_a_unit
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    assert_equal "A1", unit1.number
    assert_equal 1200, unit1.monthly_rent
    assert_equal 1, unit1.bathrooms
    assert_equal 1, unit1.bedrooms
  end

  def test_it_can_add_a_renter
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    renter1 = Renter.new("Jessie")
    assert_equal [renter1], unit1.add_renter(renter1)
    assert_equal [renter1], unit1.renters
  end
end
