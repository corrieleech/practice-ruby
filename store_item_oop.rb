class Item
  def initialize (name, color, price, stock)
    @name = name
    @color = color
    @price = price
    @stock = stock
  end

  def name
    @name
  end

  def color
    @color
  end

  def price
    @price
  end

  def stock
    @stock
  end

  def price=(input_price)
    @price = input_price
  end

  def stock=(input_stock)
    @stock = input_stock
  end

end

item1 = Item.new("pencil", "purple", 3.99, 100)

puts "Hi this iz Corzstore. Would you like a #{item1.name}? It is #{item1.color} and costs $#{item1.price}."
