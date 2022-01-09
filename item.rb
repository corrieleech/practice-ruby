module Item
  attr_accessor :name, :color, :price, :stock

  def initialize (options_hash)
    @name = options_hash[:name]
    @color = options_hash[:color]
    @price = options_hash[:price]
    @stock = options_hash[:stock]
  end
end