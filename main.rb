require "./food.rb"
require "./office_supply.rb"
require "./item.rb"

item1 = Office_Supply.new(name: "pencils", color: "purple",  price: 4.99, stock: 10)
item2 = Office_Supply.new(name: "pens", color: "blue", price: 3.99, stock: 49)
item3 = Office_Supply.new(name: "erasers", color: "pink",  price: 2.99, stock: 50)
item4 = Office_Supply.new(name: "ream of paper", color: "white", price: 10.99, stock: 500)
item5 = Office_Supply.new(name: "banana", color: "yellow", price: 1.99, stock: 30000, shelf_life:7)

puts "Hi this iz Corzstore. Would you like a #{item1.name}? It is #{item1.color} and costs $#{item1.price}."

puts "Oh, you're interested in a #{item2.name}?"
puts "The price of the item is $#{item2.price}."
puts "The color of the item is #{item2.color}."
puts "We have #{item2.stock} in stock."