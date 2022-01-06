class Vehicle
  attr_accessor :speed, :direction
  def initialize(options_hash)
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car < Vehicle
  attr_accessor :fuel, :make, :model
  def initialize(options_hash)
    super
    @fuel = options_hash[:fuel]
    @make = options_hash[:make]
    @model = options_hash[:model]
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end 

class Bike < Vehicle
  attr_accessor :type, :weight
  def initialize(options_hash)
    super
    @type = options_hash[:type]
    @weight = options_hash[:weight]
  end

  def ring_bell
    puts "Ring ring!"
  end
end

bike = Bike.new({type: Mountain, weight: 20)
car = Car.new

bike.accelerate
car.accelerate

puts "A bike goes:"
puts bike.ring_bell
puts
puts "A car goes:"
puts car.honk_horn

puts car.model