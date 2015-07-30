class Ship

  SHIP_TYPES = { destroyer: 2,cruiser: 3, submarine: 3, battleship: 4, aircraft_carrier: 5 }

  def self.method_missing(method, *args, &block)
    return Ship.new(SHIP_TYPES[method]) if SHIP_TYPES.include?(method)
    super
  end

  attr_reader :size

  def initialize size
    @placed = false
    @size = size
  end

  def placed?
    @placed
  end

  def confirm_place
    raise "Ship has already been placed" if placed?
    @placed = true
  end
end
