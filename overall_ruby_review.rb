# ## 1. Variables, Arrays, and Loops

# 1. Create a program that asks the user for their favorite 5 foods. Then display those foods as an array, using the `p` keyword.

puts "Enter your fave 5 foods"
food = []
5.times do
  fave = gets.chomp
  food << fave
end

p food

# 2. Now, instead of printing out the array, output 5 separate lines of each food, with the prefix, “I love”.

food.each do |favorite|
  puts "I love #{favorite}"
end

# 3. Finally, change your program so that when the list is printed in the terminal, each food is prefaced with a number, beginning with 1 and going up to 5, for example:

i = 1
food.each do |favorite|
  puts "#{i}: #{favorite}"
  i += 1
end

## 2. Operators and Conditionals

# 1.  Create and define a variable `count = 0`. Using a loop and the `+=` operator, output the following:

i = 0
11.times do
  puts i
  i += 1
end

# 2.2 Sam/Sally Exercise
sam_recipes = ["meatballs", "pancakes", "salad", "salmon", "brownies", "coq au vin", "pots du creme", "chili", "dumplings", "pad thai", "ramen", "sloppy joes"]
sally_languages = ["italian", "pig-latin", "english", "spanish", "korean", "thai"]


if sam_recipes.length > 10 && sally_languages.length > 5
  puts "Sam and Sally should date."
else
  puts "Sam and Sally should join OkCupid and find dates."
end

couples_skills = []
sam_recipes.each do |recipe|
  couples_skills << recipe
end
sally_languages.each do |language|
  couples_skills << language
end

compatability = false
couples_skills.each do |skill|
  if skill == "crepes" || skill == "french"
    compatability = true
  end
end
if compatability == true
  puts "Sam and Sally should get married, teach their babies French, and feed them crepes"
else
  puts "Sam and Sally should break up and apply for the Bachelor."
end

## 3. Hashes

people = []

5.times do
  puts "Enter your first name."
  first_name = gets.chomp
  puts "Enter your last name."
  last_name = gets.chomp
  puts "Enter your email"
  email = gets.chomp
  number = rand.to_s[2..11]
  people << {firstname: first_name, lastname: last_name, email: email, account_number: number}
end

people.each do |person|
  puts "FIRST NAME: #{person[:firstname]}"
  puts "LAST NAME: #{person[:lastname]}"
  puts "EMAIL: #{person[:email]}"
  puts "ACCT #: #{person[:account_number]}"
  puts
end

## 4. Final Review
group_a = []
group_b = []

i = 0
9.times do
  name = gets.chomp
  if i.even?
    group_a << name
    i += 1
  else
    group_b << name
    i += 1
  end
end

puts "Group A is: #{group_a}"
puts "Group B is: #{group_b}"


# 2. Refactor the program to take an odd or even number of students. If odd, one group should have three students.
#    ```
#    Group: Hermione Seamus
#    Group: Lucius Cho
#    Group: Sirius Luna
#    Group: Severus Draco Harry
#    ```

## Bonus

# 1. Continue with Exercise 3:
#    Expand the program so a user gets all the account info by entering an account number i.e. prompt the user to enter an account number, and output the first_name, last_name, etc.

people = []

5.times do
  puts "Enter your first name."
  first_name = gets.chomp
  puts "Enter your last name."
  last_name = gets.chomp
  puts "Enter your email"
  email = gets.chomp
  while email.include?("@") == false || email.end_with?(".com") == false
    puts "Please enter a valid email address."
    email = gets.chomp
  end
  number = rand.to_s[2..11]
  people << {firstname: first_name, lastname: last_name, email: email, account_number: number}
end

people.each do |person|
  puts "FIRST NAME: #{person[:firstname]}"
  puts "LAST NAME: #{person[:lastname]}"
  puts "EMAIL: #{person[:email]}"
  puts "ACCT #: #{person[:account_number]}"
  puts
end

puts "Enter an account number for more info:"
entry_number = gets.chomp
people.each do |person|
  if person[:account_number] == entry_number
    puts "FIRST NAME: #{person[:firstname]}"
    puts "LAST NAME: #{person[:lastname]}"
    puts "EMAIL: #{person[:email]}"
    puts "ACCT #: #{person[:account_number]}"
  end
end


## Object oriented programming practice

# Use the code below to answer the following questions.

class Card
  attr_reader :question, :answer
  def initialize(data_hash)
    @question = data_hash.keys
    raw_answer = data_hash.values.to_s
    @answer = raw_answer[2...-2]
  end
end

class Deck
  attr_reader :remaining_cards, :game_cards
  def initialize(trivia_data)
    @game_cards = []
    trivia_data.each do |key, value|
      data_hash = {key => value}
      @game_cards << Card.new(data_hash)
    end
  end

  def draw_card
    game_cards[0]
    game_cards.shift
  end

  def remaining_cards # integer
    @remaining_cards = @game_cards.length
  end
end

trivia_data = {
  "What is the capital of Illinois?" => "Springfield",
  "Is Africa a country or a continent?" => "Continent",
  "Tug of war was once an Olympic event. True or false?" => "True"
}

deck = Deck.new(trivia_data) # deck is an instance of the Deck class

#Challenges 1, 3, 4
score = 0
while deck.remaining_cards > 0
  card = deck.draw_card # card is an instance of the Card class
  puts card.question
  user_answer = gets.chomp
  if user_answer.downcase == card.answer.downcase
    puts "Correct. Five points."
    score = score + 5
  end
  while user_answer.downcase != card.answer.downcase
    puts "Incorrect! Try again."
    user_answer = gets.chomp
  end
end
puts "Your final score is #{score}."

#***NOTE TO TAs/Self***

# Need to return to these after doing the terminal challenge.
# # 2. Change the program to use multiple choice questions. The Card class should be responsible for checking the answer.

# # 5. CHALLENGE: Change the program to give the user the choice at the end of the game to retry the cards they got wrong.

# # 6. CHALLENGE: Change the interface with better prompts, ASCII art, etc. Be as creative as you'd like!