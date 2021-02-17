class Building
  attr_reader :units,
              :renters

  def initialize
    @units = []
    @renters = []
  end

  def add_unit(unit)
    @units << unit
  end

  def add_renter(name)
    result = @renters.find_all do |name|
      name.name == name
      end

  end

  def renters
    @renters << add_renter(@renter)
  end
end
