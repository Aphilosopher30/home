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




end
