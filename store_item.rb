inventory = [
  {
    name: "pencils", 
    color: "purple", 
    price: 4.99, 
    stock: 10,
  },
  {
    name: "erasers", 
    color: "pink", 
    price: 2.99, 
    stock: 2,
  },
  {
    name: "pens", 
    color: "blue", 
    price: 3.99, 
    stock: 49,
  },
  {
    :name => "paper", 
    :color => "ivory", 
    :price => 10.99, 
    stock: 100,
  },
]

puts "Hi, this is Corzstore. We sell #{inventory[0][:name]}, #{inventory[1][:name]}, #{inventory[2][:name]} and #{inventory[3][:name]}."

i = 0
while i < inventory.length
  if inventory[i][:stock] > 10
    puts "Low supply of #{inventory[i][:name]}."
  end
  i += 1
end 