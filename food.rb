require "./item.rb"

class Food
  include Item
  attr_reader :shelf_life
  def initialize
    @shelf_life = options_hash[:shelf_life]
  end
end