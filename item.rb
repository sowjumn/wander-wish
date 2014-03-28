class Item
  attr_reader :name
  attr_accessor :purchased

  def initialize(name)
    @name = name
    @purchased = false
  end
end