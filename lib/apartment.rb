class Apartment
  attr_reader :number,
              :monthly_rent,
              :bathrooms,
              :bedrooms,
              :renters

  def initialize(number:, monthly_rent:, bathrooms:, bedrooms:)
    @number = number
    @monthly_rent = monthly_rent
    @bathrooms = bathrooms
    @bedrooms = bedrooms
    @renters = []
  end

  def add_renter(tenant)
    @renters << tenant
  end
end
