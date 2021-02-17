require './lib/building'
require './lib/apartment'
require './lib/renter'


class Apartment
  attr_reader :number, :monthly_rent, :bathrooms, :bedrooms, :renter
  attr_accessor :house

  def initialize(details)
    @details = details
    @number = details[:number]
    @monthly_rent = details[:monthly_rent]
    @bathrooms = details[:bathrooms]
    @bedrooms = details[:bedrooms]
    @renter = nil
    @house = nil
  end

  def add_renter(renter)
    @renter = renter
    if @house != nil
      @house.renters << renter.name
    end
  end


end
