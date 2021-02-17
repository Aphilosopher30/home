require './lib/apartment'

class Building
  attr_reader :units, :renters

  def initialize()
    @units = []
    @renters = []
  end

  def add_unit(unit)
    @units << unit
    unit.house = self
  end

  def average_rent
    total_rent_income = 0
    units.each do |unit|
      if unit.renter != nil
        total_rent_income += unit.monthly_rent
      end
    end
    (total_rent_income.to_f/renters.length.to_f).round(2)
  end


end
